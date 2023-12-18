--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: energy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.energy (
    id bytea NOT NULL,
    deviceid uuid,
    measurement_value double precision,
    "timestamp" timestamp without time zone
);


ALTER TABLE public.energy OWNER TO postgres;

--
-- Data for Name: energy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.energy (id, deviceid, measurement_value, "timestamp") FROM stdin;
\\x6a1564bcd69843cb93e542fa18c46774	2fdb6799-9125-4319-ac13-dd5c27f96990	0	2023-11-23 10:57:08.12
\\x17b29bc8267b4b67b7200e2bd8f1acc6	2fdb6799-9125-4319-ac13-dd5c27f96990	0.5	2023-11-23 10:57:13.141
\\x456545ce2e874dcaa201853eada2ca6a	2fdb6799-9125-4319-ac13-dd5c27f96990	1	2023-11-23 10:57:18.142
\\xde1c9770f6194f0fa9d6490ae0c0b01d	2fdb6799-9125-4319-ac13-dd5c27f96990	3.64170771	2023-11-23 10:57:23.146
\\x8785f02232fb4b34b57241ea847f7c10	2fdb6799-9125-4319-ac13-dd5c27f96990	7.55216266	2023-11-23 10:57:28.149
\\x76594006f7ce45ddb829e2ad2f33d9ca	2fdb6799-9125-4319-ac13-dd5c27f96990	10.23553823	2023-11-23 10:57:33.156
\\x5da9376b428b4a7f88fbf67e09fe046d	2fdb6799-9125-4319-ac13-dd5c27f96990	15.30209515	2023-11-23 10:57:38.163
\\xc9ef3842111344069727d0ffdca39669	2fdb6799-9125-4319-ac13-dd5c27f96990	21.07578217	2023-11-23 10:57:43.17
\\xe491f6efe7d0455ab1a1d92185a6bfba	2fdb6799-9125-4319-ac13-dd5c27f96990	0	2023-11-27 07:46:26.958
\\x3f1f825c1a8f4c7b80d71149685aee9b	2fdb6799-9125-4319-ac13-dd5c27f96990	0.5	2023-11-27 07:46:31.996
\\x4f1ad0ad2e5e4fc3aec60b178e15caea	2fdb6799-9125-4319-ac13-dd5c27f96990	1	2023-11-27 07:46:37.002
\\x2af0a4d3a4e44459acd392b9dff42d84	2fdb6799-9125-4319-ac13-dd5c27f96990	3.64170771	2023-11-27 07:46:42.01
\\xf13db36c0a154b91819314eee248ee17	2fdb6799-9125-4319-ac13-dd5c27f96990	7.55216266	2023-11-27 07:46:47.025
\\xf8da6f60ce35412381b011233cc44618	2fdb6799-9125-4319-ac13-dd5c27f96990	10.23553823	2023-11-27 07:46:52.036
\\x69d818e625254b118490418792f75923	2fdb6799-9125-4319-ac13-dd5c27f96990	15.30209515	2023-11-27 07:46:57.044
\\xe23bf156910d4932a31e9537d975376e	2fdb6799-9125-4319-ac13-dd5c27f96990	21.07578217	2023-11-27 07:47:02.057
\\x435103f28dad43d1a7a4307ca7a4f727	2fdb6799-9125-4319-ac13-dd5c27f96990	0	2023-11-27 09:22:40.494
\\x2410f28de9b8438296edc7bcc4b690f1	2fdb6799-9125-4319-ac13-dd5c27f96990	0.5	2023-11-27 09:22:45.51
\\xc5dee5bafca249a69459d8e1932b870f	2fdb6799-9125-4319-ac13-dd5c27f96990	1	2023-11-27 09:22:50.515
\\x6aee5181e5d64f3c98917228374c4c5d	2fdb6799-9125-4319-ac13-dd5c27f96990	3.64170771	2023-11-27 09:22:55.519
\\xd4dae53ab6bf49788368cd09aa8db8c4	2fdb6799-9125-4319-ac13-dd5c27f96990	7.55216266	2023-11-27 09:23:00.526
\\x8d6d9968ac4946a08388bc18ddbaf04a	2fdb6799-9125-4319-ac13-dd5c27f96990	10.23553823	2023-11-27 09:23:05.54
\\x1cbaf084cef14dfa849886639034d2eb	2fdb6799-9125-4319-ac13-dd5c27f96990	15.30209515	2023-11-27 09:23:10.554
\\x5789cea30f464b14985cb04208144303	2fdb6799-9125-4319-ac13-dd5c27f96990	0	2023-11-27 10:04:41.506
\\xfd6e28507f4c43f0a3fe2ebfdea4d6cb	2fdb6799-9125-4319-ac13-dd5c27f96990	0.5	2023-11-27 10:04:46.527
\\x4c709e7840c14afcb5c24d5ba5ce4550	2fdb6799-9125-4319-ac13-dd5c27f96990	1	2023-11-27 10:04:51.543
\\x96d6a55afd534ce6b5d551428df5cfd2	2fdb6799-9125-4319-ac13-dd5c27f96990	3.64170771	2023-11-27 10:04:56.579
\\xa2c8ce283923467fa416521f8447f507	2fdb6799-9125-4319-ac13-dd5c27f96990	7.55216266	2023-11-27 10:05:01.594
\\x814fbbb3139b438fa5ec8afeab50bcc7	2fdb6799-9125-4319-ac13-dd5c27f96990	10.23553823	2023-11-27 10:05:06.608
\\x4b4d3b00355f4bb8a8c0579eb77311cd	2fdb6799-9125-4319-ac13-dd5c27f96990	15.30209515	2023-11-27 10:05:11.613
\\xe604fbe604984f258061ad3926043071	2fdb6799-9125-4319-ac13-dd5c27f96990	21.07578217	2023-11-27 10:05:16.615
\\xdc29c049d3f0404c94ad3475ae084003	2fdb6799-9125-4319-ac13-dd5c27f96990	26.28717425	2023-11-27 10:05:21.628
\\xacb4db44fe544ab08f06676df1b573ff	2fdb6799-9125-4319-ac13-dd5c27f96990	32.80028424	2023-11-27 10:05:26.633
\\x325a45b49e394ac882b05532ec38567c	2fdb6799-9125-4319-ac13-dd5c27f96990	39.54327976	2023-11-27 10:05:31.634
\\x29b08b801ce142fb8bab7eed9a9b8532	2fdb6799-9125-4319-ac13-dd5c27f96990	46.65130876	2023-11-27 10:05:36.64
\\x96021906986c441b94f2fdecb06606eb	2fdb6799-9125-4319-ac13-dd5c27f96990	0.5	2023-11-28 06:54:23.162
\\x42ce78d62bc04aac8b24aa6047361e3e	2fdb6799-9125-4319-ac13-dd5c27f96990	3.64170771	2023-11-28 06:54:33.192
\\x281f8f334fa34876bfa38f50d4ec9b4c	2fdb6799-9125-4319-ac13-dd5c27f96990	0	2023-11-28 06:54:18.138
\\x50267686456a4fb78cab3b9bd6bf379c	2fdb6799-9125-4319-ac13-dd5c27f96990	1	2023-11-28 06:54:28.178
\\x8ad430c2ae8746d3810effd9c03b6a02	2fdb6799-9125-4319-ac13-dd5c27f96990	7.55216266	2023-11-28 06:54:38.199
\\x1f661b3917314fc997a36dd0dd5c3933	2fdb6799-9125-4319-ac13-dd5c27f96990	10.23553823	2023-11-28 06:54:43.213
\\x2af985eb128a4183a736f39f52a2be5c	2fdb6799-9125-4319-ac13-dd5c27f96990	15.30209515	2023-11-28 06:54:48.225
\\x2bf5738489c34fb0b5d4c4eb126c684f	2fdb6799-9125-4319-ac13-dd5c27f96990	21.07578217	2023-11-28 06:54:53.233
\\xb9b5518ae5ff44159968a99132790603	2fdb6799-9125-4319-ac13-dd5c27f96990	26.28717425	2023-11-28 06:54:58.238
\\x1014635d471146cba71f839240c9ccbd	2fdb6799-9125-4319-ac13-dd5c27f96990	32.80028424	2023-11-28 06:55:03.251
\\x117ee70e64734ef4aa224fc2f6d8d1ef	2fdb6799-9125-4319-ac13-dd5c27f96990	39.54327976	2023-11-28 06:55:08.255
\\x5075a4075ade408194f84b6b832478fe	2fdb6799-9125-4319-ac13-dd5c27f96990	46.65130876	2023-11-28 06:55:13.267
\\x7d7320545bb443a984bef473e1789a37	2fdb6799-9125-4319-ac13-dd5c27f96990	55.04047408	2023-11-28 06:55:18.275
\\xf3c339b76e6d40daa323b17fc9caf3c3	2fdb6799-9125-4319-ac13-dd5c27f96990	62.61276386	2023-11-28 06:55:23.285
\\x208402523ff045fdbc90df907b60a89c	2fdb6799-9125-4319-ac13-dd5c27f96990	72.88877851	2023-11-28 06:55:28.29
\\xd486c6b6c58440119aa3f00f0cafae6f	2fdb6799-9125-4319-ac13-dd5c27f96990	0	2023-11-28 06:59:54.339
\\x0f079656a49546cbbdb743dc666ac23f	2fdb6799-9125-4319-ac13-dd5c27f96990	0.5	2023-11-28 06:59:59.361
\\xa18688b78121456b9147993950cd5f09	2fdb6799-9125-4319-ac13-dd5c27f96990	0	2023-11-28 06:59:59.756
\\x4c4178911b7b4625ac1efec45d3750fe	2fdb6799-9125-4319-ac13-dd5c27f96990	1	2023-11-28 07:00:04.369
\\xff6528178db244109b1735227e02e9ec	2fdb6799-9125-4319-ac13-dd5c27f96990	0.5	2023-11-28 07:00:04.781
\\x4067c66cb58c4ca19228b1f6ccf0d6d1	2fdb6799-9125-4319-ac13-dd5c27f96990	3.64170771	2023-11-28 07:00:09.382
\\x39f6861914d8453187fe930ea2d31168	2fdb6799-9125-4319-ac13-dd5c27f96990	1	2023-11-28 07:00:09.79
\\xb1153ba4e871465297d1c5f03fd2b9d4	2fdb6799-9125-4319-ac13-dd5c27f96990	7.55216266	2023-11-28 07:00:14.396
\\xf35719d73eb54539839963bc5c9d5896	2fdb6799-9125-4319-ac13-dd5c27f96990	3.64170771	2023-11-28 07:00:14.801
\\x92ec8f10b2424dc182273cc2e02e5f23	2fdb6799-9125-4319-ac13-dd5c27f96990	10.23553823	2023-11-28 07:00:19.404
\\x09da631f7181471ba9e053581bd03601	2fdb6799-9125-4319-ac13-dd5c27f96990	7.55216266	2023-11-28 07:00:19.816
\\x16784006813f44d0b2c65a1d48b0a318	2fdb6799-9125-4319-ac13-dd5c27f96990	15.30209515	2023-11-28 07:00:24.415
\\x6951f70d67784bc4acc741daf649e380	2fdb6799-9125-4319-ac13-dd5c27f96990	10.23553823	2023-11-28 07:00:24.825
\\x34d0a8c2ae744ac3be49915bff5e8c68	2fdb6799-9125-4319-ac13-dd5c27f96990	21.07578217	2023-11-28 07:00:29.425
\\xa69aad96f16046ae83a55af4be1665e4	2fdb6799-9125-4319-ac13-dd5c27f96990	15.30209515	2023-11-28 07:00:29.833
\\x129742da12d5454290734b3d5e305fc0	2fdb6799-9125-4319-ac13-dd5c27f96990	26.28717425	2023-11-28 07:00:34.428
\\x03e7805c741d4470923dbd3d3cc540cf	2fdb6799-9125-4319-ac13-dd5c27f96990	21.07578217	2023-11-28 07:00:34.836
\\xf966f8a823444c279c583b2fce5a4fe1	2fdb6799-9125-4319-ac13-dd5c27f96990	32.80028424	2023-11-28 07:00:39.431
\\x5bdf773bc7194017980322b10c918079	2fdb6799-9125-4319-ac13-dd5c27f96990	26.28717425	2023-11-28 07:00:39.837
\\xcbc617a6e8dc4660b2c96ed42fa2a808	2fdb6799-9125-4319-ac13-dd5c27f96990	39.54327976	2023-11-28 07:00:44.434
\\xbaf6b44d4eda44dd9f7f0e52fb9b9257	2fdb6799-9125-4319-ac13-dd5c27f96990	32.80028424	2023-11-28 07:00:44.852
\\x85db436e77e2456eb5392922de89430c	2fdb6799-9125-4319-ac13-dd5c27f96990	46.65130876	2023-11-28 07:00:49.44
\\x25ec4b323cd74d179a0e7822eddeea98	2fdb6799-9125-4319-ac13-dd5c27f96990	39.54327976	2023-11-28 07:00:49.863
\\xfb2bfcde97c248318f2be9a3cabb29fa	2fdb6799-9125-4319-ac13-dd5c27f96990	55.04047408	2023-11-28 07:00:54.442
\\x8847c6f45c16443f83cda44b7b02f502	2fdb6799-9125-4319-ac13-dd5c27f96990	46.65130876	2023-11-28 07:00:54.865
\\xa94437433f1647ba919b0b80cb69a986	2fdb6799-9125-4319-ac13-dd5c27f96990	62.61276386	2023-11-28 07:00:59.445
\\xd03dc8fdbe60473dbfb53e90f828c2d3	2fdb6799-9125-4319-ac13-dd5c27f96990	55.04047408	2023-11-28 07:00:59.877
\\x62a06e6ea09f47129252e3be6717e670	2fdb6799-9125-4319-ac13-dd5c27f96990	72.88877851	2023-11-28 07:01:04.458
\\x8440682a004647328496be3121c000c5	2fdb6799-9125-4319-ac13-dd5c27f96990	62.61276386	2023-11-28 07:01:04.883
\\xf33e0755247041f4903e822244c91671	2fdb6799-9125-4319-ac13-dd5c27f96990	80.77743397	2023-11-28 07:01:09.467
\\x4ebf0720090f4b989f9ee664cb2e916f	2fdb6799-9125-4319-ac13-dd5c27f96990	72.88877851	2023-11-28 07:01:09.893
\\xbdf14ac072c64e0a8db57cefc523effd	2fdb6799-9125-4319-ac13-dd5c27f96990	89.03512063	2023-11-28 07:01:14.476
\\x73a1f49610d949aab023fd34d6aa9ebf	2fdb6799-9125-4319-ac13-dd5c27f96990	80.77743397	2023-11-28 07:01:14.904
\\xb3d1eee27089468f8f65edda22980a14	2fdb6799-9125-4319-ac13-dd5c27f96990	97.87930754	2023-11-28 07:01:19.482
\\xf7c0ef5d29674041a7b2a352f4a0a323	2fdb6799-9125-4319-ac13-dd5c27f96990	89.03512063	2023-11-28 07:01:19.907
\\x99e7d3c7739c485ab051e6ec9fcc66e5	520ad0b0-eaac-4037-832b-61653269d7d4	0	2023-11-28 07:01:20.589
\\x0f6af6b56fb94880a87e2daea45a42a4	2fdb6799-9125-4319-ac13-dd5c27f96990	97.87930754	2023-11-28 07:01:24.917
\\x5aeeeb21321a45029c7ba734d0480112	520ad0b0-eaac-4037-832b-61653269d7d4	0.5	2023-11-28 07:01:25.615
\\x764fd18535b34da9af6023711bdfd47c	2fdb6799-9125-4319-ac13-dd5c27f96990	105.8790905	2023-11-28 07:01:29.92
\\x94e5454adbb445d7bd8e34f9a2fe3bd8	520ad0b0-eaac-4037-832b-61653269d7d4	1	2023-11-28 07:01:30.625
\\x55932d7bf37f4b62a31ac3afac3e5878	2fdb6799-9125-4319-ac13-dd5c27f96990	114.8276137	2023-11-28 07:01:34.926
\\xa248f9cc132b44f4815f94b03084e150	520ad0b0-eaac-4037-832b-61653269d7d4	3.64170771	2023-11-28 07:01:35.629
\\xef6a9a1302974dfdb54fc9f117d339e9	2fdb6799-9125-4319-ac13-dd5c27f96990	124.2124759	2023-11-28 07:01:39.938
\\xb56f0c92ee044ea786db35187711a43d	520ad0b0-eaac-4037-832b-61653269d7d4	7.55216266	2023-11-28 07:01:40.636
\\x1771f646e6a240d39b239fa864732045	2fdb6799-9125-4319-ac13-dd5c27f96990	135.6389864	2023-11-28 07:01:44.947
\\x933ed4b0e1dc4c4daf15e0cbf9f1a59a	520ad0b0-eaac-4037-832b-61653269d7d4	10.23553823	2023-11-28 07:01:45.649
\\xc05c031300444947adc969b5420c366b	2fdb6799-9125-4319-ac13-dd5c27f96990	146.1113224	2023-11-28 07:01:49.959
\\xb6f58e5685a44887b1e82c6fddbe9fbb	520ad0b0-eaac-4037-832b-61653269d7d4	15.30209515	2023-11-28 07:01:50.65
\\xeff8469eaabd49dfafd1351533a5659b	2fdb6799-9125-4319-ac13-dd5c27f96990	159.1819885	2023-11-28 07:01:54.971
\\xc439d82079454f1e84ad53ed3d315c0e	520ad0b0-eaac-4037-832b-61653269d7d4	21.07578217	2023-11-28 07:01:55.662
\\x5b9544a9a4a4418ba8d7dbc63f328308	520ad0b0-eaac-4037-832b-61653269d7d4	26.28717425	2023-11-28 07:02:00.666
\\x43adb16fd5644e9da729a0b062cabd6c	520ad0b0-eaac-4037-832b-61653269d7d4	0	2023-11-28 08:32:06.063
\\x0bbc5c1e426346e5aa93d0ec6cafd3eb	520ad0b0-eaac-4037-832b-61653269d7d4	0.5	2023-11-28 08:32:11.088
\\xc7b6255f29c5443da2ad5e70e3733d03	520ad0b0-eaac-4037-832b-61653269d7d4	1	2023-11-28 08:32:16.099
\\x6950e36007fd434f991677c25406287d	520ad0b0-eaac-4037-832b-61653269d7d4	3.64170771	2023-11-28 08:32:21.113
\\xd3fa84c462c7473eb1997ec96c2936bf	520ad0b0-eaac-4037-832b-61653269d7d4	7.55216266	2023-11-28 08:32:26.128
\\x5ad3b313d4eb47a9a4881e3a389973c4	520ad0b0-eaac-4037-832b-61653269d7d4	10.23553823	2023-11-28 08:32:31.13
\\x7aca56da45e44d719935e1415a804ca9	520ad0b0-eaac-4037-832b-61653269d7d4	15.30209515	2023-11-28 08:32:36.133
\\x83763d6f5d24487aafa19960a9106f6b	520ad0b0-eaac-4037-832b-61653269d7d4	21.07578217	2023-11-28 08:32:41.145
\\xac06cbf64a6c49c88bc7a1dede8d04c2	520ad0b0-eaac-4037-832b-61653269d7d4	26.28717425	2023-11-28 08:32:46.159
\\x6683eb05efc94bb287a55442d1063e98	520ad0b0-eaac-4037-832b-61653269d7d4	32.80028424	2023-11-28 08:32:51.165
\\x0423316b3de44f89a097a74ef5c695db	520ad0b0-eaac-4037-832b-61653269d7d4	39.54327976	2023-11-28 08:32:56.17
\\x7c87f7f5b5f14037ab2e9a83275cd48a	520ad0b0-eaac-4037-832b-61653269d7d4	46.65130876	2023-11-28 08:33:01.173
\\xaefe831b262f4678b2c2736c6ef5b8d8	520ad0b0-eaac-4037-832b-61653269d7d4	55.04047408	2023-11-28 08:33:06.176
\\x875b55757ab7477db6f24311f5958e8b	520ad0b0-eaac-4037-832b-61653269d7d4	62.61276386	2023-11-28 08:33:11.184
\\xa8c0e817c0464165a1e5f3e8f7b0e0d2	520ad0b0-eaac-4037-832b-61653269d7d4	72.88877851	2023-11-28 08:33:16.196
\\x846cb747d77c480f930fa20c226e375c	520ad0b0-eaac-4037-832b-61653269d7d4	80.77743397	2023-11-28 08:33:21.199
\\x2b5bede37f884e8e95b340027221975b	520ad0b0-eaac-4037-832b-61653269d7d4	89.03512063	2023-11-28 08:33:26.214
\\x588672bae68242cf91e75512aec2bf5e	520ad0b0-eaac-4037-832b-61653269d7d4	97.87930754	2023-11-28 08:33:31.216
\\x9074a5b19436486ea13179a30971250c	520ad0b0-eaac-4037-832b-61653269d7d4	105.8790905	2023-11-28 08:33:36.228
\\xd95b854ef1924db08c3590a28b39284f	520ad0b0-eaac-4037-832b-61653269d7d4	114.8276137	2023-11-28 08:33:41.242
\\xf2084ee58c0248d383e048e2cb4ad88c	520ad0b0-eaac-4037-832b-61653269d7d4	124.2124759	2023-11-28 08:33:46.245
\\x0c5891ed7cd34f928bc56f0cb05990f2	520ad0b0-eaac-4037-832b-61653269d7d4	0	2023-11-28 08:53:25.323
\\x173c8985e0254ac79daf0b2d4b8c401f	520ad0b0-eaac-4037-832b-61653269d7d4	0	2023-11-28 08:53:29.199
\\x5ed47ce84ee54fab9f41cc7a6f4cea51	520ad0b0-eaac-4037-832b-61653269d7d4	0.5	2023-11-28 08:53:30.34
\\xaa9c1f613a294f67baa3c456db8d3cca	520ad0b0-eaac-4037-832b-61653269d7d4	0.5	2023-11-28 08:53:34.222
\\x38fca7b749b7436bbcc2ba386d71d517	520ad0b0-eaac-4037-832b-61653269d7d4	1	2023-11-28 08:53:35.343
\\xbb0f7af51e0a43d9bce76540390817e4	520ad0b0-eaac-4037-832b-61653269d7d4	1	2023-11-28 08:53:39.234
\\x8bfe71e123804d748cbb450a6acd0a4a	520ad0b0-eaac-4037-832b-61653269d7d4	3.64170771	2023-11-28 08:53:40.347
\\x949b74272982473491b5cec28a70c772	520ad0b0-eaac-4037-832b-61653269d7d4	3.64170771	2023-11-28 08:53:44.242
\\x9bbb259eb0814b1aa8d8a255bff8f4ea	520ad0b0-eaac-4037-832b-61653269d7d4	7.55216266	2023-11-28 08:53:45.361
\\xe0a8b14f0bec44a89f97c4272ed79ef0	520ad0b0-eaac-4037-832b-61653269d7d4	7.55216266	2023-11-28 08:53:49.248
\\x92b7f5fdfc3547bfa74cbeba479f03fe	520ad0b0-eaac-4037-832b-61653269d7d4	10.23553823	2023-11-28 08:53:50.363
\\xc3c3c582c1494250b17495fd78eb22dd	520ad0b0-eaac-4037-832b-61653269d7d4	10.23553823	2023-11-28 08:53:54.254
\\xbfe0fdb0cdff4906ab364d7f465012f9	520ad0b0-eaac-4037-832b-61653269d7d4	15.30209515	2023-11-28 08:53:55.375
\\x5c1d92f735b944dc869e751dad608ddf	520ad0b0-eaac-4037-832b-61653269d7d4	15.30209515	2023-11-28 08:53:59.255
\\xebb656d1666a4c139f6224fd4177ed44	520ad0b0-eaac-4037-832b-61653269d7d4	21.07578217	2023-11-28 08:54:00.386
\\xa1c236fb59674a1aaff221679c7470cb	520ad0b0-eaac-4037-832b-61653269d7d4	21.07578217	2023-11-28 08:54:04.26
\\x01e2678c603e4236997631c89f79e037	520ad0b0-eaac-4037-832b-61653269d7d4	26.28717425	2023-11-28 08:54:05.395
\\x7b60db03f22744f696ef9cb3dc0ec66b	520ad0b0-eaac-4037-832b-61653269d7d4	26.28717425	2023-11-28 08:54:09.264
\\x1222d645e55c4efda50d4d151eb49260	520ad0b0-eaac-4037-832b-61653269d7d4	32.80028424	2023-11-28 08:54:10.405
\\xc5ca1aae7e3b491d90adcca54bfa96f4	520ad0b0-eaac-4037-832b-61653269d7d4	32.80028424	2023-11-28 08:54:14.269
\\xf304a6df8d554792a7772e0b44ec60c0	520ad0b0-eaac-4037-832b-61653269d7d4	39.54327976	2023-11-28 08:54:15.417
\\xb2594bb51daf47c09dda5a1e11bb9d6e	520ad0b0-eaac-4037-832b-61653269d7d4	39.54327976	2023-11-28 08:54:19.274
\\xe0a1ce7a3e3a4c40ab7383b5590147ca	520ad0b0-eaac-4037-832b-61653269d7d4	46.65130876	2023-11-28 08:54:20.431
\\xaa32e3d8cfa64d7bac40941cf791cd8a	520ad0b0-eaac-4037-832b-61653269d7d4	46.65130876	2023-11-28 08:54:24.278
\\xff2ce07920394ba8af259d08bf24dff5	520ad0b0-eaac-4037-832b-61653269d7d4	55.04047408	2023-11-28 08:54:25.442
\\x2edbe6b50d5e43b396a88728b16507be	520ad0b0-eaac-4037-832b-61653269d7d4	55.04047408	2023-11-28 08:54:29.293
\\xef357bb886864fa39c1090a5fcfa106f	520ad0b0-eaac-4037-832b-61653269d7d4	62.61276386	2023-11-28 08:54:30.446
\\x62ef79fb22b34c428cc74b8c485d6d2a	520ad0b0-eaac-4037-832b-61653269d7d4	62.61276386	2023-11-28 08:54:34.305
\\x4c44f1ab0771453db3ea274140e67e75	520ad0b0-eaac-4037-832b-61653269d7d4	72.88877851	2023-11-28 08:54:35.458
\\x8d3bbac04b8e4433945f27fd0448f79b	6dc838b4-2b3c-414b-8286-a84026c3a866	0	2023-11-28 08:56:47.962
\\x8942056dd2d54a18a6d4e2fcf8443ec4	6dc838b4-2b3c-414b-8286-a84026c3a866	0.5	2023-11-28 08:56:52.98
\\x0d5c3724f58a4d5d9b0c5b80bb66ef45	6dc838b4-2b3c-414b-8286-a84026c3a866	1	2023-11-28 08:56:57.992
\\x493c113329494f5fa7c3cb199c6e6f2b	6dc838b4-2b3c-414b-8286-a84026c3a866	3.64170771	2023-11-28 08:57:03.004
\\x7fd78c6144a24773b3517b647b87ad3a	6dc838b4-2b3c-414b-8286-a84026c3a866	7.55216266	2023-11-28 08:57:08.017
\\xf1700ca6636a444ab5bea9dcfe184588	6dc838b4-2b3c-414b-8286-a84026c3a866	10.23553823	2023-11-28 08:57:13.018
\\xda7485f38c1142c5846f7bb2d5c82b61	6dc838b4-2b3c-414b-8286-a84026c3a866	15.30209515	2023-11-28 08:57:18.032
\\xae45f83bb4784474b03d08fa8a16e5f0	6dc838b4-2b3c-414b-8286-a84026c3a866	21.07578217	2023-11-28 08:57:23.048
\\x2ca88c1c7d7943bc840faae611a34cb8	6dc838b4-2b3c-414b-8286-a84026c3a866	26.28717425	2023-11-28 08:57:28.06
\\x74bcc0c49d58456ab0cf5c73dbf9c3e1	6dc838b4-2b3c-414b-8286-a84026c3a866	32.80028424	2023-11-28 08:57:33.062
\\x9491e19cfe944588b5d6032bf1e360fe	6dc838b4-2b3c-414b-8286-a84026c3a866	39.54327976	2023-11-28 08:57:38.067
\\x3155a4081bb64f2a98875fc16b538281	6dc838b4-2b3c-414b-8286-a84026c3a866	46.65130876	2023-11-28 08:57:43.069
\\xcc4f959113bd4f36ad0c64a3c0e4974e	6dc838b4-2b3c-414b-8286-a84026c3a866	55.04047408	2023-11-28 08:57:48.08
\\x50d6e98705134109a6f7e0625f8af902	6dc838b4-2b3c-414b-8286-a84026c3a866	62.61276386	2023-11-28 08:57:53.09
\\xd1dea8eedc904eff9b240eac37ebe122	6dc838b4-2b3c-414b-8286-a84026c3a866	72.88877851	2023-11-28 08:57:58.093
\\x15b6e7f962f8400f81b02898949d7caa	6dc838b4-2b3c-414b-8286-a84026c3a866	80.77743397	2023-11-28 08:58:03.107
\\xcfa092a2bbaa4f68a4f8b77e307b8ce1	6dc838b4-2b3c-414b-8286-a84026c3a866	89.03512063	2023-11-28 08:58:08.115
\\x2db00c35563844ecbb069ea7719cbf3a	6dc838b4-2b3c-414b-8286-a84026c3a866	97.87930754	2023-11-28 08:58:13.127
\.


--
-- Name: energy energy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.energy
    ADD CONSTRAINT energy_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
