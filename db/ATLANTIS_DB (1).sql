PGDMP     &                    {            ATLANTIS_DB    14.7    14.7 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    17108    ATLANTIS_DB    DATABASE     o   CREATE DATABASE "ATLANTIS_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';
    DROP DATABASE "ATLANTIS_DB";
                postgres    false            ?            1259    17240 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    17239    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    234            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    233            ?            1259    17249    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    17248    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    236            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    235            ?            1259    17233    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    17232    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    232            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    231            ?            1259    17256 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    17265    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    17264    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    240            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    239            ?            1259    17255    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    238            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    237            ?            1259    17272    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    17271 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    242            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    241            ?            1259    17331    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    17330    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    244            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    243            ?            1259    17224    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    17223    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    230            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    229            ?            1259    17215    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    17214    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    228            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    227            ?            1259    17360    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    17109    tbl_actuators    TABLE     ?  CREATE TABLE public.tbl_actuators (
    actuators_id integer NOT NULL,
    greenhouse_id integer NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    exhaust_fan numeric(1,0),
    evaporator_cooler numeric(1,0),
    greenhouse_light numeric(1,0),
    warmer_lamps numeric(1,0),
    ac_motors numeric(1,0),
    water_pump numeric(1,0),
    aeration_pump numeric(1,0),
    automatic_baiting_system numeric(1,0),
    water_heater numeric(1,0),
    water_aerator numeric(1,0),
    water_blender numeric(1,0),
    solenoid_valve_1 numeric(1,0),
    solenoid_valve_2 numeric(1,0),
    solenoid_valve_3 numeric(1,0),
    solenoid_valve_4 numeric(1,0)
);
 !   DROP TABLE public.tbl_actuators;
       public         heap    postgres    false            ?            1259    17112    tbl_actuators_actuators_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_actuators_actuators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbl_actuators_actuators_id_seq;
       public          postgres    false    209            ?           0    0    tbl_actuators_actuators_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tbl_actuators_actuators_id_seq OWNED BY public.tbl_actuators.actuators_id;
          public          postgres    false    210            ?            1259    17113    tbl_fish_data    TABLE     ?   CREATE TABLE public.tbl_fish_data (
    fd_id integer NOT NULL,
    greenhouse_id integer NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    fish_width numeric(5,2),
    fish_height numeric(5,2),
    fish_weight numeric(5,2)
);
 !   DROP TABLE public.tbl_fish_data;
       public         heap    postgres    false            ?            1259    17116    tbl_fish_data_fd_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_fish_data_fd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_fish_data_fd_id_seq;
       public          postgres    false    211            ?           0    0    tbl_fish_data_fd_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_fish_data_fd_id_seq OWNED BY public.tbl_fish_data.fd_id;
          public          postgres    false    212            ?            1259    17117    tbl_greenhouse    TABLE     ?   CREATE TABLE public.tbl_greenhouse (
    greenhouse_id integer NOT NULL,
    location character varying(50),
    user_id integer NOT NULL
);
 "   DROP TABLE public.tbl_greenhouse;
       public         heap    postgres    false            ?            1259    17120     tbl_greenhouse_greenhouse_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_greenhouse_greenhouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbl_greenhouse_greenhouse_id_seq;
       public          postgres    false    213            ?           0    0     tbl_greenhouse_greenhouse_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tbl_greenhouse_greenhouse_id_seq OWNED BY public.tbl_greenhouse.greenhouse_id;
          public          postgres    false    214            ?            1259    17121    tbl_greenhouse_monitoring    TABLE     )  CREATE TABLE public.tbl_greenhouse_monitoring (
    gm_id integer NOT NULL,
    greenhouse_id integer NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    air_temperature numeric(5,2),
    relative_humidity integer,
    co2_level integer,
    intensity_illumination numeric(5,2)
);
 -   DROP TABLE public.tbl_greenhouse_monitoring;
       public         heap    postgres    false            ?            1259    17124 #   tbl_greenhouse_monitoring_gm_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_greenhouse_monitoring_gm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tbl_greenhouse_monitoring_gm_id_seq;
       public          postgres    false    215            ?           0    0 #   tbl_greenhouse_monitoring_gm_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.tbl_greenhouse_monitoring_gm_id_seq OWNED BY public.tbl_greenhouse_monitoring.gm_id;
          public          postgres    false    216            ?            1259    17125    tbl_plant_data    TABLE     ?   CREATE TABLE public.tbl_plant_data (
    pd_id integer NOT NULL,
    greenhouse_id integer NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    plant_health numeric(1,0)
);
 "   DROP TABLE public.tbl_plant_data;
       public         heap    postgres    false            ?            1259    17128    tbl_plant_data_pd_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_plant_data_pd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbl_plant_data_pd_id_seq;
       public          postgres    false    217            ?           0    0    tbl_plant_data_pd_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tbl_plant_data_pd_id_seq OWNED BY public.tbl_plant_data.pd_id;
          public          postgres    false    218            ?            1259    17129    tbl_user_data    TABLE     {   CREATE TABLE public.tbl_user_data (
    user_id integer NOT NULL,
    username character varying(25),
    password text
);
 !   DROP TABLE public.tbl_user_data;
       public         heap    postgres    false            ?            1259    17134    tbl_user_data_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_user_data_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbl_user_data_user_id_seq;
       public          postgres    false    219            ?           0    0    tbl_user_data_user_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tbl_user_data_user_id_seq OWNED BY public.tbl_user_data.user_id;
          public          postgres    false    220            ?            1259    17135    tbl_water_biofilter    TABLE     ?   CREATE TABLE public.tbl_water_biofilter (
    wbf_id integer NOT NULL,
    greenhouse_id integer NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    nitrite numeric(6,2),
    nitrate numeric(4,2),
    ammonia numeric(4,2)
);
 '   DROP TABLE public.tbl_water_biofilter;
       public         heap    postgres    false            ?            1259    17138    tbl_water_biofilter_wbf_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_water_biofilter_wbf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbl_water_biofilter_wbf_id_seq;
       public          postgres    false    221            ?           0    0    tbl_water_biofilter_wbf_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tbl_water_biofilter_wbf_id_seq OWNED BY public.tbl_water_biofilter.wbf_id;
          public          postgres    false    222            ?            1259    17139    tbl_water_sensingtank    TABLE     1  CREATE TABLE public.tbl_water_sensingtank (
    wst_id integer NOT NULL,
    greenhouse_id integer NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    ph_level numeric(4,2),
    water_temperature numeric(5,2),
    elec_conductivity numeric(4,2),
    total_dissolved_solids numeric(5,2)
);
 )   DROP TABLE public.tbl_water_sensingtank;
       public         heap    postgres    false            ?            1259    17142     tbl_water_sensingtank_wst_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_water_sensingtank_wst_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbl_water_sensingtank_wst_id_seq;
       public          postgres    false    223            ?           0    0     tbl_water_sensingtank_wst_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tbl_water_sensingtank_wst_id_seq OWNED BY public.tbl_water_sensingtank.wst_id;
          public          postgres    false    224            ?            1259    17143    tbl_water_testbed    TABLE     ?  CREATE TABLE public.tbl_water_testbed (
    wtb_id integer NOT NULL,
    greenhouse_id integer NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    ph_level numeric(4,2),
    water_temperature numeric(5,2),
    dissolved_o2_level numeric(5,2),
    elec_conductivity numeric(4,2),
    total_dissolved_solids numeric(5,2),
    nitrite numeric(6,2),
    nitrate numeric(4,2),
    ammonia numeric(4,2)
);
 %   DROP TABLE public.tbl_water_testbed;
       public         heap    postgres    false            ?            1259    17146    tbl_water_testbed_wtb_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_water_testbed_wtb_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbl_water_testbed_wtb_id_seq;
       public          postgres    false    225            ?           0    0    tbl_water_testbed_wtb_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tbl_water_testbed_wtb_id_seq OWNED BY public.tbl_water_testbed.wtb_id;
          public          postgres    false    226            ?           2604    17243    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            ?           2604    17252    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            ?           2604    17236    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            ?           2604    17259    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            ?           2604    17268    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            ?           2604    17275    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            ?           2604    17334    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            ?           2604    17227    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            ?           2604    17218    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            ?           2604    17147    tbl_actuators actuators_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_actuators ALTER COLUMN actuators_id SET DEFAULT nextval('public.tbl_actuators_actuators_id_seq'::regclass);
 I   ALTER TABLE public.tbl_actuators ALTER COLUMN actuators_id DROP DEFAULT;
       public          postgres    false    210    209            ?           2604    17148    tbl_fish_data fd_id    DEFAULT     z   ALTER TABLE ONLY public.tbl_fish_data ALTER COLUMN fd_id SET DEFAULT nextval('public.tbl_fish_data_fd_id_seq'::regclass);
 B   ALTER TABLE public.tbl_fish_data ALTER COLUMN fd_id DROP DEFAULT;
       public          postgres    false    212    211            ?           2604    17149    tbl_greenhouse greenhouse_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_greenhouse ALTER COLUMN greenhouse_id SET DEFAULT nextval('public.tbl_greenhouse_greenhouse_id_seq'::regclass);
 K   ALTER TABLE public.tbl_greenhouse ALTER COLUMN greenhouse_id DROP DEFAULT;
       public          postgres    false    214    213            ?           2604    17150    tbl_greenhouse_monitoring gm_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_greenhouse_monitoring ALTER COLUMN gm_id SET DEFAULT nextval('public.tbl_greenhouse_monitoring_gm_id_seq'::regclass);
 N   ALTER TABLE public.tbl_greenhouse_monitoring ALTER COLUMN gm_id DROP DEFAULT;
       public          postgres    false    216    215            ?           2604    17151    tbl_plant_data pd_id    DEFAULT     |   ALTER TABLE ONLY public.tbl_plant_data ALTER COLUMN pd_id SET DEFAULT nextval('public.tbl_plant_data_pd_id_seq'::regclass);
 C   ALTER TABLE public.tbl_plant_data ALTER COLUMN pd_id DROP DEFAULT;
       public          postgres    false    218    217            ?           2604    17152    tbl_user_data user_id    DEFAULT     ~   ALTER TABLE ONLY public.tbl_user_data ALTER COLUMN user_id SET DEFAULT nextval('public.tbl_user_data_user_id_seq'::regclass);
 D   ALTER TABLE public.tbl_user_data ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    220    219            ?           2604    17153    tbl_water_biofilter wbf_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_water_biofilter ALTER COLUMN wbf_id SET DEFAULT nextval('public.tbl_water_biofilter_wbf_id_seq'::regclass);
 I   ALTER TABLE public.tbl_water_biofilter ALTER COLUMN wbf_id DROP DEFAULT;
       public          postgres    false    222    221            ?           2604    17154    tbl_water_sensingtank wst_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_water_sensingtank ALTER COLUMN wst_id SET DEFAULT nextval('public.tbl_water_sensingtank_wst_id_seq'::regclass);
 K   ALTER TABLE public.tbl_water_sensingtank ALTER COLUMN wst_id DROP DEFAULT;
       public          postgres    false    224    223            ?           2604    17155    tbl_water_testbed wtb_id    DEFAULT     ?   ALTER TABLE ONLY public.tbl_water_testbed ALTER COLUMN wtb_id SET DEFAULT nextval('public.tbl_water_testbed_wtb_id_seq'::regclass);
 G   ALTER TABLE public.tbl_water_testbed ALTER COLUMN wtb_id DROP DEFAULT;
       public          postgres    false    226    225            ?          0    17240 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    234   ??       ?          0    17249    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    236   ??       ?          0    17233    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    232   ??       ?          0    17256 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    238   O?       ?          0    17265    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    240   l?       ?          0    17272    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    242   ??       ?          0    17331    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    244   ??       ?          0    17224    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    230   ??       ?          0    17215    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    228   ??       ?          0    17360    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    245   P?       ?          0    17109    tbl_actuators 
   TABLE DATA           E  COPY public.tbl_actuators (actuators_id, greenhouse_id, "timestamp", exhaust_fan, evaporator_cooler, greenhouse_light, warmer_lamps, ac_motors, water_pump, aeration_pump, automatic_baiting_system, water_heater, water_aerator, water_blender, solenoid_valve_1, solenoid_valve_2, solenoid_valve_3, solenoid_valve_4) FROM stdin;
    public          postgres    false    209   m?       ?          0    17113    tbl_fish_data 
   TABLE DATA           p   COPY public.tbl_fish_data (fd_id, greenhouse_id, "timestamp", fish_width, fish_height, fish_weight) FROM stdin;
    public          postgres    false    211   l?       ?          0    17117    tbl_greenhouse 
   TABLE DATA           J   COPY public.tbl_greenhouse (greenhouse_id, location, user_id) FROM stdin;
    public          postgres    false    213   ??       ?          0    17121    tbl_greenhouse_monitoring 
   TABLE DATA           ?   COPY public.tbl_greenhouse_monitoring (gm_id, greenhouse_id, "timestamp", air_temperature, relative_humidity, co2_level, intensity_illumination) FROM stdin;
    public          postgres    false    215   ?       ?          0    17125    tbl_plant_data 
   TABLE DATA           Y   COPY public.tbl_plant_data (pd_id, greenhouse_id, "timestamp", plant_health) FROM stdin;
    public          postgres    false    217   ??       ?          0    17129    tbl_user_data 
   TABLE DATA           D   COPY public.tbl_user_data (user_id, username, password) FROM stdin;
    public          postgres    false    219   ??       ?          0    17135    tbl_water_biofilter 
   TABLE DATA           l   COPY public.tbl_water_biofilter (wbf_id, greenhouse_id, "timestamp", nitrite, nitrate, ammonia) FROM stdin;
    public          postgres    false    221   ?       ?          0    17139    tbl_water_sensingtank 
   TABLE DATA           ?   COPY public.tbl_water_sensingtank (wst_id, greenhouse_id, "timestamp", ph_level, water_temperature, elec_conductivity, total_dissolved_solids) FROM stdin;
    public          postgres    false    223   p?       ?          0    17143    tbl_water_testbed 
   TABLE DATA           ?   COPY public.tbl_water_testbed (wtb_id, greenhouse_id, "timestamp", ph_level, water_temperature, dissolved_o2_level, elec_conductivity, total_dissolved_solids, nitrite, nitrate, ammonia) FROM stdin;
    public          postgres    false    225    ?       ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    233            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    235            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public          postgres    false    231            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    239            ?           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    237            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    241            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    243            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
          public          postgres    false    229            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
          public          postgres    false    227            ?           0    0    tbl_actuators_actuators_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tbl_actuators_actuators_id_seq', 144, true);
          public          postgres    false    210            ?           0    0    tbl_fish_data_fd_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tbl_fish_data_fd_id_seq', 48, true);
          public          postgres    false    212            ?           0    0     tbl_greenhouse_greenhouse_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tbl_greenhouse_greenhouse_id_seq', 1, true);
          public          postgres    false    214            ?           0    0 #   tbl_greenhouse_monitoring_gm_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.tbl_greenhouse_monitoring_gm_id_seq', 48, true);
          public          postgres    false    216            ?           0    0    tbl_plant_data_pd_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbl_plant_data_pd_id_seq', 48, true);
          public          postgres    false    218            ?           0    0    tbl_user_data_user_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbl_user_data_user_id_seq', 1, true);
          public          postgres    false    220            ?           0    0    tbl_water_biofilter_wbf_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tbl_water_biofilter_wbf_id_seq', 48, true);
          public          postgres    false    222            ?           0    0     tbl_water_sensingtank_wst_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.tbl_water_sensingtank_wst_id_seq', 48, true);
          public          postgres    false    224            ?           0    0    tbl_water_testbed_wtb_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tbl_water_testbed_wtb_id_seq', 48, true);
          public          postgres    false    226            ?           2606    17358    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    234            ?           2606    17288 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    236    236            ?           2606    17254 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    236            ?           2606    17245    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    234            ?           2606    17279 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    232    232            ?           2606    17238 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    232            ?           2606    17270 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    240            ?           2606    17303 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    240    240            ?           2606    17261    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    238            ?           2606    17277 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    242                        2606    17317 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    242    242            ?           2606    17353     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    238                       2606    17339 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    244            ?           2606    17231 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    230    230            ?           2606    17229 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    230            ?           2606    17222 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    228                       2606    17366 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    245            ?           2606    17157     tbl_actuators tbl_actuators_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tbl_actuators
    ADD CONSTRAINT tbl_actuators_pkey PRIMARY KEY (actuators_id);
 J   ALTER TABLE ONLY public.tbl_actuators DROP CONSTRAINT tbl_actuators_pkey;
       public            postgres    false    209            ?           2606    17159     tbl_fish_data tbl_fish_data_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.tbl_fish_data
    ADD CONSTRAINT tbl_fish_data_pkey PRIMARY KEY (fd_id);
 J   ALTER TABLE ONLY public.tbl_fish_data DROP CONSTRAINT tbl_fish_data_pkey;
       public            postgres    false    211            ?           2606    17161 8   tbl_greenhouse_monitoring tbl_greenhouse_monitoring_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.tbl_greenhouse_monitoring
    ADD CONSTRAINT tbl_greenhouse_monitoring_pkey PRIMARY KEY (gm_id);
 b   ALTER TABLE ONLY public.tbl_greenhouse_monitoring DROP CONSTRAINT tbl_greenhouse_monitoring_pkey;
       public            postgres    false    215            ?           2606    17163 "   tbl_greenhouse tbl_greenhouse_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.tbl_greenhouse
    ADD CONSTRAINT tbl_greenhouse_pkey PRIMARY KEY (greenhouse_id);
 L   ALTER TABLE ONLY public.tbl_greenhouse DROP CONSTRAINT tbl_greenhouse_pkey;
       public            postgres    false    213            ?           2606    17165 "   tbl_plant_data tbl_plant_data_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tbl_plant_data
    ADD CONSTRAINT tbl_plant_data_pkey PRIMARY KEY (pd_id);
 L   ALTER TABLE ONLY public.tbl_plant_data DROP CONSTRAINT tbl_plant_data_pkey;
       public            postgres    false    217            ?           2606    17167     tbl_user_data tbl_user_data_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tbl_user_data
    ADD CONSTRAINT tbl_user_data_pkey PRIMARY KEY (user_id);
 J   ALTER TABLE ONLY public.tbl_user_data DROP CONSTRAINT tbl_user_data_pkey;
       public            postgres    false    219            ?           2606    17169 ,   tbl_water_biofilter tbl_water_biofilter_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tbl_water_biofilter
    ADD CONSTRAINT tbl_water_biofilter_pkey PRIMARY KEY (wbf_id);
 V   ALTER TABLE ONLY public.tbl_water_biofilter DROP CONSTRAINT tbl_water_biofilter_pkey;
       public            postgres    false    221            ?           2606    17171 0   tbl_water_sensingtank tbl_water_sensingtank_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tbl_water_sensingtank
    ADD CONSTRAINT tbl_water_sensingtank_pkey PRIMARY KEY (wst_id);
 Z   ALTER TABLE ONLY public.tbl_water_sensingtank DROP CONSTRAINT tbl_water_sensingtank_pkey;
       public            postgres    false    223            ?           2606    17173 (   tbl_water_testbed tbl_water_testbed_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_water_testbed
    ADD CONSTRAINT tbl_water_testbed_pkey PRIMARY KEY (wtb_id);
 R   ALTER TABLE ONLY public.tbl_water_testbed DROP CONSTRAINT tbl_water_testbed_pkey;
       public            postgres    false    225            ?           1259    17359    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    234            ?           1259    17299 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    236            ?           1259    17300 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    236            ?           1259    17285 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    232            ?           1259    17315 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    240            ?           1259    17314 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    240            ?           1259    17329 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    242            ?           1259    17328 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    242            ?           1259    17354     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    238                       1259    17350 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    244                       1259    17351 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    244                       1259    17368 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    245                       1259    17367 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    245                       2606    17294 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    232    3300    236                       2606    17289 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3305    234    236                       2606    17280 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3295    232    230                       2606    17309 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    240    234    3305                       2606    17304 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3313    238    240                       2606    17323 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    232    3300    242                       2606    17318 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    238    242    3313                       2606    17340 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3295    230    244                       2606    17345 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    244    3313    238            	           2606    17174 .   tbl_actuators tbl_actuators_greenhouse_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_actuators
    ADD CONSTRAINT tbl_actuators_greenhouse_id_fkey FOREIGN KEY (greenhouse_id) REFERENCES public.tbl_greenhouse(greenhouse_id);
 X   ALTER TABLE ONLY public.tbl_actuators DROP CONSTRAINT tbl_actuators_greenhouse_id_fkey;
       public          postgres    false    209    213    3277            
           2606    17179 .   tbl_fish_data tbl_fish_data_greenhouse_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_fish_data
    ADD CONSTRAINT tbl_fish_data_greenhouse_id_fkey FOREIGN KEY (greenhouse_id) REFERENCES public.tbl_greenhouse(greenhouse_id);
 X   ALTER TABLE ONLY public.tbl_fish_data DROP CONSTRAINT tbl_fish_data_greenhouse_id_fkey;
       public          postgres    false    211    213    3277                       2606    17184 F   tbl_greenhouse_monitoring tbl_greenhouse_monitoring_greenhouse_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_greenhouse_monitoring
    ADD CONSTRAINT tbl_greenhouse_monitoring_greenhouse_id_fkey FOREIGN KEY (greenhouse_id) REFERENCES public.tbl_greenhouse(greenhouse_id);
 p   ALTER TABLE ONLY public.tbl_greenhouse_monitoring DROP CONSTRAINT tbl_greenhouse_monitoring_greenhouse_id_fkey;
       public          postgres    false    213    215    3277                       2606    17189 *   tbl_greenhouse tbl_greenhouse_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_greenhouse
    ADD CONSTRAINT tbl_greenhouse_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.tbl_user_data(user_id);
 T   ALTER TABLE ONLY public.tbl_greenhouse DROP CONSTRAINT tbl_greenhouse_user_id_fkey;
       public          postgres    false    213    3283    219                       2606    17194 0   tbl_plant_data tbl_plant_data_greenhouse_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_plant_data
    ADD CONSTRAINT tbl_plant_data_greenhouse_id_fkey FOREIGN KEY (greenhouse_id) REFERENCES public.tbl_greenhouse(greenhouse_id);
 Z   ALTER TABLE ONLY public.tbl_plant_data DROP CONSTRAINT tbl_plant_data_greenhouse_id_fkey;
       public          postgres    false    3277    217    213                       2606    17199 :   tbl_water_biofilter tbl_water_biofilter_greenhouse_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_water_biofilter
    ADD CONSTRAINT tbl_water_biofilter_greenhouse_id_fkey FOREIGN KEY (greenhouse_id) REFERENCES public.tbl_greenhouse(greenhouse_id);
 d   ALTER TABLE ONLY public.tbl_water_biofilter DROP CONSTRAINT tbl_water_biofilter_greenhouse_id_fkey;
       public          postgres    false    221    3277    213                       2606    17204 >   tbl_water_sensingtank tbl_water_sensingtank_greenhouse_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_water_sensingtank
    ADD CONSTRAINT tbl_water_sensingtank_greenhouse_id_fkey FOREIGN KEY (greenhouse_id) REFERENCES public.tbl_greenhouse(greenhouse_id);
 h   ALTER TABLE ONLY public.tbl_water_sensingtank DROP CONSTRAINT tbl_water_sensingtank_greenhouse_id_fkey;
       public          postgres    false    3277    223    213                       2606    17209 6   tbl_water_testbed tbl_water_testbed_greenhouse_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_water_testbed
    ADD CONSTRAINT tbl_water_testbed_greenhouse_id_fkey FOREIGN KEY (greenhouse_id) REFERENCES public.tbl_greenhouse(greenhouse_id);
 `   ALTER TABLE ONLY public.tbl_water_testbed DROP CONSTRAINT tbl_water_testbed_greenhouse_id_fkey;
       public          postgres    false    225    213    3277            ?      x?????? ? ?      ?      x?????? ? ?      ?   ?  x?u?[??0E??U?????{??҈$?M"p?ջ0e???_??5????ݏE???V????ʨ?????u??˽o?Q?????a?%??7ö??h???װ,?4?ʫ?????????X$??	w???yz=U??omJ*??C?:?T? o?u4x-vV??~j????.?~Z?v ??;???aۿz?<?7_?ѭ?Z?~?V?? ??m?TD? ???<?Q?*QS?^??&Z/v?W;/O?b????툁^??]G?[Eo?;????^???E?׺?t????A?'ح?	??	r?%??9}b???r/????1?oKۊ?K)Oi?ǀ??4????:Ń:?53??֎?i????qM׍?g???V?????W`?Ё??7-??iֿhoj?DI#????}7qL?'=????8)מ?Ԕﾃ8'?&?þ??ѯ??_c?'???F4??<??I???yk?Lû?D(Dx>!??tJlk;?L?cL$?%? &Ą`|?G?O??ޭ?y?>???K?:t?;qC?ɸ?D??L'?#??n2-I&z?d?i??qY???ǿ?4?/??m2c?qљ??L??	?7;??5y֝????.?l?ʴ?9,?6?>IL4??d?$I?4$?2ג?XÐ????????      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x?u???@??ۇ1???ѣ7?K???%??ۻJL?o3????;?zׅ??????n?س*??<ib(f3*Eع{Kk6???N鳭_w??X?׋??û?h!*sT???)'M$?6?????a?S5K?????>?~???c3????F??Ps??b1?$????n1b?VR? ? |s??      ?   ?  x????n? E??W?~Ԉ??`??rv?#!?P	?????!??Q?a???rx24o??1????WCeG??v?/_?? x????Q?`??I?6'?&3?t?Lܑ??qY???s?x??GLb[?????;"???+??A?|????
f??F??????6?Q????w?3rN?S?~T?N?????)?d??9???om?UvԨ???????C?]2AM&6?R??ՠ??3c???DɌb%+???9??ںg -?e?T{Ĕe?㧴?@?\? TF??p:??????n??9?k?????m?~??XۆP?x?}>???S;{?ɇ???	?5?u????]q???M9?4s?)j+I~S?%ح?????>?yڇ???4?
5OY?QS?_??yܶ??HFf??;?۰?R? ?Տl?YO}??@???????yjgV      ?      x?????? ? ?      ?   ?  x?m??q?0D??*Ҁ3 t-鿎PM????3?]Pu????[?-?G???g?ڷr]:.y??z ?~?c?????*aw4I@?tb*?6?	???)q?xOj???q??ɸ?ޜ\!.wSF?O?'??=??#????#?܏o???????j?a~?D?b?K?ř4??a????)??4ԧ??Ћ*q??F?
z1?)?:L?q?????:?x?+P??k????e??~?hԋʏH?+??Sw?f?????4?=O`??q?8??!?]??8??+??M??~P???g\	?E???ԸB\?o:??9p?å?????9??m??P/k?g?2??zY'???5wC?l???e?~N?hA??p?N??e?~2{???^?/??Ρ^???H9?C?Դ?yW?????| 7??B?;??7?7?gy??E5????ԸJ???1??GzQ???=??t%?'?r????%?OD/??ָB\?W????u????֗??eY?}?~?      ?   o  x?eU?m$1?U?b?e[N-?G??#???`?J%Z9?վY?y}??a??M?????J?????lfGo1i??
n^t??0???7?E?-?1?J?p??X?H>?C?46?ŷڜ?????f???"|=??Pl??j???%???0??N?.??r? ????E]ϺSI? ?b\m1
?H?E???c.?m6H?!?o??@?J?`?????6{??$??????Ñ????c^??{Л?@#?????c???9m??v%N??;?*?{??????1?ɤ???b???0?T
???=???,???-? ?6wR+@{7??W?/A??n`??\??ҽ ????=?+1?؀????9?J?$????q6M?)??X??c?????!?1Vc?c4 ????Ȫ/O?`???<??̇??缀C?Vmy?f?F??M_Ֆx??I+'???5KK?v!??ܑ?Chf?D?UW?K?9????"?fؒ?9?A??h??Of??[D?l?⎃?7????L???^???7#<=????h??????`%?#??m??y?o?'?<???c??y???36????ҩ??X?y?7?q23Nb?3?MF??"j?kD??O      ?   !   x?3?tIMK,?)??ON,????4?????? h?%      ?   ?  x?e??ud1D?"
'`@?O?????}ԃ6???z?*??Pa??????????!.,?[?Z?F/?Upb????U?Xrv????n?Q?,Ħo,+Hbǣ;*j???)?{?r%?`?(??jg艝?.?ڤu6t?`??K??x???a&v=?R?,?>?D?6"X{???????Ì_?Mش?g?!?/$?V&??w???M?Ru&{+??芘f(/?v??ڰ????????wy:"d?????????i???(??????Frxi?	4?????M???	????N8l0?:?W????5??L_+BŜX??a1??͙/?<??l??	~r???͆??}?4?v??2?4???7 K?ߜm?V?^??X???????ܪ)?,O?ZdKwe4????F?	c['pnP????h?-87?{S쯟?3v??Vn???5q?9FT'??`??A?R??l?-78??`l7?(Zn??s6g???3vP	Zn??Й?G?z??????2۴?(??n??????VJ\???[np??k??GΞFj?p_$??QJ???u????SgÏ ?A??)6??@??D??Mü??????$ޞ?f??d?????>GƮ?o
Q<pHj?ڞg?y?9l?~7??8?????ɕ? ?N?K?_1H?@??S?t?h?4?Hr??????t?X ??Xo?      ?   ?   x?e??m1??U\?e?}???:????4??????-????????dX#?Kt8??2?Hf&???ѱ??M?Tf7??????m*eH??V?ZC??3tEC?E&?ѵ?????<????C?2i(?L	R?P???cI?P^h?P ??ۘH??????l?1v???;۸?????lc#?6???A?l??k7T?"?m?4?]A6?k?RdC?????? ?m?j?Rl??1+??5??#
?      ?   "   x?3?LIMK,?)	-N-?4426q???b???? ?		      ?   M  x?e??q%AD?+?l? [?;?V??.}z??@???B?_$_??~?|}??~K? ?,??LP?Gh?U??'??G:?nE.??g}u(	??h?????<otC?U;??-?~????u5C?????z?????(tu43?6?]3=?y$??ͪ???H??&ا\???Д???0J?
??????Kh6`{ȣ?ii??:?|D???>??e???!?&?v?W??;!??~???X?f??y4??>❣wOd?9\?f9s$??7vE??uivN??ʽϑ+?$yȟ?ג-?Ƅ?&2??????by4????KI?]??Ҟ???8H}Ȼ???\?S=gTB?`[3?ےq;rF%4y??y?????=?f??U]AsF? q=?\?7?HsF????{???3j1K2&=.????z???M?O??3???eW?ih??^?ّ?KƠ9?8K]P?j?}ה?=???b>e????????6N??)#?{ĥb??8??ԨNk??;Xʈ??W???]2yȻ?}??*??,e?~2?5!m?d???w??g;?Kq쑖sdO?Շ<?1!m?O???S?N??O??Q????-?ؾ? ???Yw      ?   ?  x?e??m?0DϟU??ܴ???_GH?v,?????hfDӇ>?,???8?????A?????Q?~??nψ?????o??`? 	???V??T??ӟ'??%?B?????)P<????????ߚ[h4X???z????e?˨>??8?{r5X??X??u?3>?)4?u?^???+??:!?.???M??Z?p:?)?m5??C??gd??"?浬ȻG?6[z7[=s?~M@)G?gv[ݛ^'vO??{?t=X?Uz'I???~c8???:??@??oO$t????
4M?nW:?V??????㞴(? S?9u??'v?B	?A߳{88?U#zb?W-[?q?ce1?X??	?ե??5?k?u???Q???i?????AĻ????e?f??????Q9˺͞?ZR?|?Y?-Ks?????;Hβm???????9˞z2?U??ꑜet???????,?????"??)Q?????+???Do@r?s?]?{??~???Lw?ŞW?mtʒ?{9
?gi?'??uK???:?[*Hʒh?w-5??xŃ~?-?o??????$???+?pp*(?????????:@S????-?qw??փ~?Ƶ?j|?Mwʒ??l???kv;???#?I?uw4gY?%NY?PB?9˺y"??cC???- ?vy      ?   ]  x?e?۱? D?M??R聀??Ǫ%{???\.???Q???.n,?m????k??.?j????~??E}Ԯ~#~x~I?-A.???????M莋?O???t9$????Z.{<l.??T???Z?U?%??ĊDZC£^Ru!
Ħ\?!1?Q@????Âx?bR(?f+????Ŭk^???UՋY? ???2????\?????ZL?yG????#?e?$?(?K??9????xh+3??ZY??O??;????r??Rmh?!?ފg|j?[VIQ??*2?^O?kOwy?C?>|?k????hQ??@F????:
?KC??4o!o?ޝ?\?J/t???%??7?
B5K:zp[H_?q???;k0B?:?1(A?:e???/b^I???????<{i<q?????ᳳ#8?????????7????_>zP?úТ??5?ҵ??Η?~i4<=?ؖ???nL?tZ??/9p^?	ˉ6\???!??????p??3??5??????ۙnP?ަ?g_d?U?!???>???ƷyҘA??????c?CC6'?.????D? OAJ??9??/?4?n{?%?=Ao?*q/???1?я??K?!? ?w?K?^?5?3ߌ??YX~w?)???qr?7>:?LIü?r?!??k??????F????H?6?0?;q>NNm?Әr?wz??3q???}?ENNm??[_(
&qx???Y?`?99[_?~?jz??u?g??????j	_?VR?4??.?U???/'?s?1Cz~qb????Y?89?????ꡕ????<	6,?_?"'???p?0?go0??F???#'?k???????>7?@^?Q??Sj[Na@?Vr?f.Ϝ[ט/?z?AVl4?!??:'?>|??)?????<;[?o????$?^{_<镻??[???P?????S??\??º??'TԴ?s?t?P~i|??J?Vv?ނ??K??fуS?-?]{?|??}??}뾮?????(\G?V???>??????g?X󱳗????1?????]p??;*f??I?;?g_ON?qF?i??e?????h??zr??)!??* ??-o-?????WK)???*?     