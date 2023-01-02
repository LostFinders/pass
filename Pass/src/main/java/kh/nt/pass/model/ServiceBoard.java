package kh.nt.pass.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
public class ServiceBoard {
	private int no;
	@NonNull
	private String title;
	private String id;
	@NonNull
	private String content;
	private Timestamp create_date;
	private int viewcount; 
}