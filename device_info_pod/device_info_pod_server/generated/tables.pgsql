--
-- Class DeviceInfoModel as table device_info
--

CREATE TABLE device_info (
  "id" serial,
  "version" integer,
  "brand" text,
  "device" text,
  "hardware" text,
  "manufacturer" text,
  "model" text,
  "supported64BitAbis" json NOT NULL,
  "isPhysicalDevice" boolean,
  "createdAt" timestamp without time zone
);

ALTER TABLE ONLY device_info
  ADD CONSTRAINT device_info_pkey PRIMARY KEY (id);


