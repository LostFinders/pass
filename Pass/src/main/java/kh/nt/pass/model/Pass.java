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
public class Pass {
	private int no;
	private String id;
	@NonNull
	private String payment_check;
	@NonNull
	private Timestamp create_date;
	@NonNull
	private Timestamp request_date;
	@NonNull
	private Timestamp processing_date;
}