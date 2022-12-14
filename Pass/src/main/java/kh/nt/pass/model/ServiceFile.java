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
public class ServiceFile {
	private String uuid;
	private int service_no;
	@NonNull
	private String id;
	@NonNull
	private String name;
	private Timestamp create_date;
}
