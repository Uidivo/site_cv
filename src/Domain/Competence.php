<?php

namespace MicroCMS\Domain;

class Competence
{
    /**
     * Competence id.
     *
     * @var integer
     */
    private $id;

    /**
     * Competence title.
     *
     * @var string
     */
    private $title;

    /**
     * Competence content.
     *
     * @var string
     */
    private $content;

    private $categorie;

    public function getId() {
        return $this->id;
    }

    public function setId($id) {
        $this->id = $id;
        return $this;
    }

    public function getTitle() {
        return $this->title;
    }

    public function setTitle($title) {
        $this->title = $title;
        return $this;
    }

    public function getContent() {
        return $this->content;
    }

    public function setContent($content) {
        $this->content = $content;
        return $this;
    }
    public function getCategorie() {
        return $this->categorie;
    }

    public function setCategorie($categorie) {
        $this->categorie = $categorie;
        return $this;
    }
}
