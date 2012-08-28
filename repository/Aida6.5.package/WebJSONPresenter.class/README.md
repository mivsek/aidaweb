WebJSONPresenter presents a domain object in JSON format.

Domain object must implement a method #asJson. Object's URL must end with '.json' and it will automatically be directed to that presenter.

Later will be extended like WebApplication. Say for Person a PersonJson, or something like that. 