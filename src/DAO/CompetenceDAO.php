<?php

namespace MicroCMS\DAO;

use Doctrine\DBAL\Connection;
use MicroCMS\Domain\Competence;

class CompetenceDAO extends DAO
{
    /**
     * Return a list of all articles, sorted by date (most recent first).
     *
     * @return array A list of all articles.
     */
    public function findAll() {
        $sql = "select * from t_competence order by competence_id desc";
        $result = $this->getDb()->fetchAll($sql);

        // Convert query result to an array of domain objects
        $competences = array();
        foreach ($result as $row) {
            $competenceId = $row['competence_id'];
            $competences[$competenceId] = $this->buildDomainObject($row);
        }
        return $competences;
    }
    /**
     * Returns an article matching the supplied id.
     *
     * @param integer $id The article id.
     *
     * @return \MicroCMS\Domain\Article|throws an exception if no matching article is found
     */
    public function find($id) {
        $sql = "select * from t_competence where competence_id=?";
        $row = $this->getDb()->fetchAssoc($sql, array($id));

        if ($row)
            return $this->buildDomainObject($row);
        else
            throw new \Exception("No competence matching id " . $id);
    }
    /**
     * Saves an article into the database.
     *
     * @param \MicroCMS\Domain\Article $article The article to save
     */
    public function save( Competence $competence ) {
        $competenceData = array(
            'competence_nom' => $competence->getTitle(),
            'competence_descriptif' => $competence->getContent(),
            'competence_categorie' => $competence->getCategorie(),

            );

        if ($competence->getId()) {
            // The article has already been saved : update it
            $this->getDb()->update('t_competence', $competenceData, array( 'competence_id' => $competence->getId() ));
        } else {
            // The article has never been saved : insert it
            $this->getDb()->insert('t_competence', $competenceData);
            // Get the id of the newly created article and set it on the entity.
            $id = $this->getDb()->lastInsertId();
            $competence->setId($id);
        }
    }

    /**
     * Removes an article from the database.
     *
     * @param integer $id The article id.
     */
    public function delete($id) {
        // Delete the article
        $this->getDb()->delete('t_competence', array('competence_id' => $id));
    }
    /**
     * Creates an Experience object based on a DB row.
     *
     * @param array $row The DB row containing Article data.
     * @return \MicroCMS\Domain\Article
     */
    protected function buildDomainObject(array $row) {
        $competence = new Competence();
        $competence->setId($row['competence_id']);
        $competence->setTitle($row['competence_nom']);
        $competence->setContent($row['competence_descriptif']);
        $competence->setCategorie($row['competence_categorie']);
        return $competence;
    }
}
