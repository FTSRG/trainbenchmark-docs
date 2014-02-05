protected void locals3() {
	Collection<Segment> candidates1 = getSegments();
	Top:
	for (Segment s1 : candidates1) {
		Collection<Segment> candidates2 = getSegmentsConnectedTo(s1);
		for (Segment s2 : candidates2) {
			if (!s2.getConnectsTo().contains(s1)) 
				continue;
			Collection<Segment> candidates3 = getSegmentsConnectedTo(s2);
			for (Segment s3 : candidates3) {
				if (!s1.getConnectsTo().contains(s3)) 
					continue;
				if (!s3.getConnectsTo().contains(s2)) 
					continue;
				if (!s3.getConnectsTo().contains(s1)) 
					continue;
				foundInvalid(s1);
				continue Top;
			}
		}
	}
}
