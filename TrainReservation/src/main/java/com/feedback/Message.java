package com.feedback;

public class Message {
	private int contact_id;
	private String client_id;
	private String name;
    private String email;
    private String subject;
    private String message;

	public Message(int contact_id, String client_id, String name, String email, String subject, String message) {
		super();
		this.contact_id = contact_id;
    	this.client_id = client_id;
        this.name = name;
        this.email = email;
        this.subject = subject;
        this.message = message;
	}

	public int getContact_id() {
		return contact_id;
	}

	public String getClient_id() {
		return client_id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getSubject() {
		return subject;
	}

	public String getMessage() {
		return message;
	}

	


}
