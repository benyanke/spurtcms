PGDMP         4                |            spurtcms_newdump #   14.8 (Ubuntu 14.8-0ubuntu0.22.10.1) #   14.8 (Ubuntu 14.8-0ubuntu0.22.10.1) [   +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    52538    spurtcms_newdump    DATABASE     _   CREATE DATABASE spurtcms_newdump WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_IN';
     DROP DATABASE spurtcms_newdump;
                postgres    false            �           1247    52540    entrystatus    TYPE     \   CREATE TYPE public.entrystatus AS ENUM (
    'draft',
    'published',
    'unpublished'
);
    DROP TYPE public.entrystatus;
       public          postgres    false            �           1247    52548    enum_access_type    TYPE     R   CREATE TYPE public.enum_access_type AS ENUM (
    'member-group',
    'member'
);
 #   DROP TYPE public.enum_access_type;
       public          postgres    false            �           1247    52554    enum_page_access    TYPE     M   CREATE TYPE public.enum_page_access AS ENUM (
    'public',
    'private'
);
 #   DROP TYPE public.enum_page_access;
       public          postgres    false            �           1247    52560    enum_page_note_type    TYPE     R   CREATE TYPE public.enum_page_note_type AS ENUM (
    'notes',
    'highlights'
);
 &   DROP TYPE public.enum_page_note_type;
       public          postgres    false            �           1247    52566    enum_page_status    TYPE     [   CREATE TYPE public.enum_page_status AS ENUM (
    'draft',
    'publish',
    'deleted'
);
 #   DROP TYPE public.enum_page_status;
       public          postgres    false            �           1247    52574 	   lang_code    TYPE     G   CREATE TYPE public.lang_code AS ENUM (
    'en',
    'fr',
    'sp'
);
    DROP TYPE public.lang_code;
       public          postgres    false            �            1259    52581    tbl_access_control    TABLE     �  CREATE TABLE public.tbl_access_control (
    id integer NOT NULL,
    access_control_name character varying(255) DEFAULT NULL::character varying,
    access_control_slug character varying(255) DEFAULT NULL::character varying,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer
);
 &   DROP TABLE public.tbl_access_control;
       public         heap    postgres    false            �            1259    52589    tbl_access_control_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_access_control_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbl_access_control_id_seq;
       public          postgres    false    209            /           0    0    tbl_access_control_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tbl_access_control_id_seq OWNED BY public.tbl_access_control.id;
          public          postgres    false    210            �            1259    52590    tbl_access_control_pages    TABLE     �  CREATE TABLE public.tbl_access_control_pages (
    id integer NOT NULL,
    access_control_user_group_id integer NOT NULL,
    spaces_id integer,
    page_group_id integer,
    page_id integer,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer,
    channel_id integer,
    entry_id integer
);
 ,   DROP TABLE public.tbl_access_control_pages;
       public         heap    postgres    false            �            1259    52594    tbl_access_control_pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_access_control_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbl_access_control_pages_id_seq;
       public          postgres    false    211            0           0    0    tbl_access_control_pages_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tbl_access_control_pages_id_seq OWNED BY public.tbl_access_control_pages.id;
          public          postgres    false    212            �            1259    52595    tbl_access_control_user_group    TABLE     �  CREATE TABLE public.tbl_access_control_user_group (
    id integer NOT NULL,
    access_control_id integer NOT NULL,
    member_group_id integer NOT NULL,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer
);
 1   DROP TABLE public.tbl_access_control_user_group;
       public         heap    postgres    false            �            1259    52599 $   tbl_access_control_user_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_access_control_user_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.tbl_access_control_user_group_id_seq;
       public          postgres    false    213            1           0    0 $   tbl_access_control_user_group_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.tbl_access_control_user_group_id_seq OWNED BY public.tbl_access_control_user_group.id;
          public          postgres    false    214            �            1259    52600    tbl_categories    TABLE     <  CREATE TABLE public.tbl_categories (
    id integer NOT NULL,
    category_name character varying(255) DEFAULT NULL::character varying,
    category_slug character varying(255) DEFAULT NULL::character varying,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer,
    parent_id integer DEFAULT 0,
    description character varying,
    image_path character varying
);
 "   DROP TABLE public.tbl_categories;
       public         heap    postgres    false            �            1259    52609    tbl_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbl_categories_id_seq;
       public          postgres    false    215            2           0    0    tbl_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tbl_categories_id_seq OWNED BY public.tbl_categories.id;
          public          postgres    false    216            �            1259    52610    tbl_channel_category    TABLE     �   CREATE TABLE public.tbl_channel_category (
    id integer NOT NULL,
    channel_id integer,
    category_id character varying,
    created_at integer,
    created_on timestamp without time zone
);
 (   DROP TABLE public.tbl_channel_category;
       public         heap    postgres    false            �            1259    52615    tbl_channel_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_channel_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbl_channel_category_id_seq;
       public          postgres    false    217            3           0    0    tbl_channel_category_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tbl_channel_category_id_seq OWNED BY public.tbl_channel_category.id;
          public          postgres    false    218            �            1259    52616    tbl_channel_entries    TABLE     !  CREATE TABLE public.tbl_channel_entries (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    user_id integer NOT NULL,
    channel_id integer NOT NULL,
    status integer NOT NULL,
    is_active integer DEFAULT 1 NOT NULL,
    is_deleted integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    created_by integer,
    modified_on timestamp without time zone,
    modified_by integer,
    deleted_on timestamp without time zone,
    deleted_by integer,
    slug character varying,
    cover_image character varying,
    thumbnail_image character varying,
    meta_title character varying,
    meta_description character varying,
    keyword character varying,
    categories_id character varying,
    related_articles character varying
);
 '   DROP TABLE public.tbl_channel_entries;
       public         heap    postgres    false            �            1259    52623    tbl_channel_entries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_channel_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_channel_entries_id_seq;
       public          postgres    false    219            4           0    0    tbl_channel_entries_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_channel_entries_id_seq OWNED BY public.tbl_channel_entries.id;
          public          postgres    false    220            �            1259    52624    tbl_channel_entry_fields    TABLE     �  CREATE TABLE public.tbl_channel_entry_fields (
    id integer NOT NULL,
    field_name character varying(255),
    field_value text,
    channel_entry_id integer NOT NULL,
    field_id integer NOT NULL,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    deleted_by integer,
    deleted_on timestamp without time zone
);
 ,   DROP TABLE public.tbl_channel_entry_fields;
       public         heap    postgres    false            �            1259    52629    tbl_channel_entry_fields_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_channel_entry_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbl_channel_entry_fields_id_seq;
       public          postgres    false    221            5           0    0    tbl_channel_entry_fields_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tbl_channel_entry_fields_id_seq OWNED BY public.tbl_channel_entry_fields.id;
          public          postgres    false    222            �            1259    52630    tbl_channel_entry_media    TABLE     �  CREATE TABLE public.tbl_channel_entry_media (
    id integer NOT NULL,
    media_type_id integer NOT NULL,
    channel_entry_id integer NOT NULL,
    file_name character varying(255),
    file_path text,
    created_by integer,
    created_on character varying(45),
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer
);
 +   DROP TABLE public.tbl_channel_entry_media;
       public         heap    postgres    false            �            1259    52636    tbl_channels    TABLE     �  CREATE TABLE public.tbl_channels (
    id integer NOT NULL,
    channel_name character varying(255),
    slug_name character varying(255),
    field_group_id integer NOT NULL,
    is_active integer DEFAULT 1 NOT NULL,
    is_deleted integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    created_by integer,
    modified_on timestamp without time zone,
    modified_by integer,
    channel_description text
);
     DROP TABLE public.tbl_channels;
       public         heap    postgres    false            �            1259    52643    tbl_channels_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_channels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 *   DROP SEQUENCE public.tbl_channels_id_seq;
       public          postgres    false    224            6           0    0    tbl_channels_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tbl_channels_id_seq OWNED BY public.tbl_channels.id;
          public          postgres    false    225            �            1259    52644    tbl_email_template    TABLE     �  CREATE TABLE public.tbl_email_template (
    id integer NOT NULL,
    template_name character varying,
    template_slug character varying,
    template_subject character varying,
    template_message text,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    is_deleted integer,
    is_active integer
);
 &   DROP TABLE public.tbl_email_template;
       public         heap    postgres    false            �            1259    52649    tbl_email_template_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_email_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbl_email_template_id_seq;
       public          postgres    false    226            7           0    0    tbl_email_template_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tbl_email_template_id_seq OWNED BY public.tbl_email_template.id;
          public          postgres    false    227            �            1259    52650    tbl_field_groups    TABLE     k  CREATE TABLE public.tbl_field_groups (
    id integer NOT NULL,
    group_name character varying(255),
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer
);
 $   DROP TABLE public.tbl_field_groups;
       public         heap    postgres    false            �            1259    52654    tbl_field_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_field_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_field_groups_id_seq;
       public          postgres    false    228            8           0    0    tbl_field_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_field_groups_id_seq OWNED BY public.tbl_field_groups.id;
          public          postgres    false    229            �            1259    52655    tbl_field_options    TABLE     �  CREATE TABLE public.tbl_field_options (
    id integer NOT NULL,
    option_name character varying(255) NOT NULL,
    option_value character varying(255) NOT NULL,
    field_id integer NOT NULL,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer
);
 %   DROP TABLE public.tbl_field_options;
       public         heap    postgres    false            �            1259    52661    tbl_field_options_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_field_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbl_field_options_id_seq;
       public          postgres    false    230            9           0    0    tbl_field_options_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tbl_field_options_id_seq OWNED BY public.tbl_field_options.id;
          public          postgres    false    231            �            1259    52662    tbl_field_types    TABLE     ~  CREATE TABLE public.tbl_field_types (
    id integer NOT NULL,
    type_name character varying(255) NOT NULL,
    type_slug character varying(255) NOT NULL,
    is_active integer DEFAULT 1,
    is_deleted integer DEFAULT 0,
    created_by integer NOT NULL,
    created_on timestamp without time zone NOT NULL,
    modified_by integer,
    modified_on timestamp without time zone
);
 #   DROP TABLE public.tbl_field_types;
       public         heap    postgres    false            �            1259    52669    tbl_field_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_field_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbl_field_types_id_seq;
       public          postgres    false    232            :           0    0    tbl_field_types_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tbl_field_types_id_seq OWNED BY public.tbl_field_types.id;
          public          postgres    false    233            �            1259    52670 
   tbl_fields    TABLE     �  CREATE TABLE public.tbl_fields (
    id integer NOT NULL,
    field_name character varying(45),
    field_type_id integer NOT NULL,
    mandatory_field integer DEFAULT 0,
    option_exist integer DEFAULT 0,
    created_on timestamp without time zone,
    created_by integer,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer,
    field_desc character varying,
    order_index integer,
    initial_value character varying,
    placeholder text,
    image_path character varying,
    datetime_format character varying,
    time_format character varying,
    url character varying,
    section_parent_id integer,
    character_allowed integer
);
    DROP TABLE public.tbl_fields;
       public         heap    postgres    false            �            1259    52678    tbl_fields_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbl_fields_id_seq;
       public          postgres    false    234            ;           0    0    tbl_fields_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tbl_fields_id_seq OWNED BY public.tbl_fields.id;
          public          postgres    false    235            �            1259    52679    tbl_group_fields    TABLE     �   CREATE TABLE public.tbl_group_fields (
    id integer NOT NULL,
    channel_id integer NOT NULL,
    field_id integer NOT NULL
);
 $   DROP TABLE public.tbl_group_fields;
       public         heap    postgres    false            �            1259    52682    tbl_group_fields_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_group_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 .   DROP SEQUENCE public.tbl_group_fields_id_seq;
       public          postgres    false    236            <           0    0    tbl_group_fields_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_group_fields_id_seq OWNED BY public.tbl_group_fields.id;
          public          postgres    false    237            �            1259    52683    tbl_language    TABLE     �  CREATE TABLE public.tbl_language (
    id integer NOT NULL,
    language_name character varying(255),
    language_code character varying(3),
    image_path character varying,
    json_path character varying,
    is_status integer,
    is_default integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer,
    deleted_on timestamp without time zone,
    deleted_by integer
);
     DROP TABLE public.tbl_language;
       public         heap    postgres    false            �            1259    52688    tbl_language_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbl_language_id_seq;
       public          postgres    false    238            =           0    0    tbl_language_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tbl_language_id_seq OWNED BY public.tbl_language.id;
          public          postgres    false    239            �            1259    52689 	   tbl_media    TABLE     l  CREATE TABLE public.tbl_media (
    id integer NOT NULL,
    name character varying,
    parent_id integer,
    is_deleted integer,
    created_by integer,
    created_at timestamp without time zone,
    modified_by integer,
    modified_at timestamp without time zone,
    deleted_by integer,
    deleted_at timestamp without time zone,
    media_type integer
);
    DROP TABLE public.tbl_media;
       public         heap    postgres    false            �            1259    52694    tbl_media_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_media_id_seq;
       public          postgres    false    240            >           0    0    tbl_media_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_media_id_seq OWNED BY public.tbl_media.id;
          public          postgres    false    241            �            1259    52695    tbl_media_type_id    SEQUENCE     z   CREATE SEQUENCE public.tbl_media_type_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbl_media_type_id;
       public          postgres    false            �            1259    52696    tbl_media_type    TABLE     �   CREATE TABLE public.tbl_media_type (
    id integer DEFAULT nextval('public.tbl_media_type_id'::regclass) NOT NULL,
    type character varying(255),
    slug character varying(255)
);
 "   DROP TABLE public.tbl_media_type;
       public         heap    postgres    false    242            �            1259    52702    tbl_member_group    TABLE     �  CREATE TABLE public.tbl_member_group (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    is_active integer DEFAULT 1 NOT NULL,
    is_deleted integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    created_by integer,
    modified_on timestamp without time zone,
    modified_by integer,
    description character varying
);
 $   DROP TABLE public.tbl_member_group;
       public         heap    postgres    false            �            1259    52709    tbl_member_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_member_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_member_group_id_seq;
       public          postgres    false    244            ?           0    0    tbl_member_group_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_member_group_id_seq OWNED BY public.tbl_member_group.id;
          public          postgres    false    245            �            1259    52710    tbl_member_groups    TABLE     %  CREATE TABLE public.tbl_member_groups (
    id bigint NOT NULL,
    name text,
    slug text,
    description text,
    is_active bigint,
    is_deleted bigint,
    created_on timestamp with time zone,
    created_by bigint,
    modified_on timestamp with time zone,
    modified_by bigint
);
 %   DROP TABLE public.tbl_member_groups;
       public         heap    postgres    false            �            1259    52715    tbl_member_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_member_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbl_member_groups_id_seq;
       public          postgres    false    246            @           0    0    tbl_member_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tbl_member_groups_id_seq OWNED BY public.tbl_member_groups.id;
          public          postgres    false    247            �            1259    52716    tbl_member_notes_highlights    TABLE     �  CREATE TABLE public.tbl_member_notes_highlights (
    id integer NOT NULL,
    member_id integer,
    page_id integer,
    notes_highlights_content text,
    notes_highlights_type public.enum_page_note_type,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    is_deleted integer,
    highlights_configuration jsonb
);
 /   DROP TABLE public.tbl_member_notes_highlights;
       public         heap    postgres    false    909            �            1259    52721 "   tbl_member_notes_highlights_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_member_notes_highlights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tbl_member_notes_highlights_id_seq;
       public          postgres    false    248            A           0    0 "   tbl_member_notes_highlights_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tbl_member_notes_highlights_id_seq OWNED BY public.tbl_member_notes_highlights.id;
          public          postgres    false    249            �            1259    52722    tbl_members    TABLE     �  CREATE TABLE public.tbl_members (
    id integer NOT NULL,
    uuid text,
    first_name text,
    last_name text,
    email text,
    username character varying(255),
    password character varying(255),
    mobile_no text,
    is_active bigint DEFAULT 1,
    member_group_id bigint,
    profile_image text,
    profile_image_path text,
    created_on timestamp without time zone NOT NULL,
    created_by bigint,
    modified_on timestamp without time zone,
    modified_by bigint,
    last_login bigint,
    is_deleted bigint DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by bigint,
    otp integer,
    otp_expiry timestamp without time zone
);
    DROP TABLE public.tbl_members;
       public         heap    postgres    false            �            1259    52729    tbl_members_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbl_members_id_seq;
       public          postgres    false    250            B           0    0    tbl_members_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tbl_members_id_seq OWNED BY public.tbl_members.id;
          public          postgres    false    251            �            1259    52730    tbl_module_permissions    TABLE     �  CREATE TABLE public.tbl_module_permissions (
    id integer NOT NULL,
    route_name text,
    display_name text,
    description text,
    module_id bigint,
    created_by bigint,
    created_on timestamp without time zone NOT NULL,
    modified_by bigint,
    modified_on timestamp without time zone,
    full_access_permission bigint DEFAULT 0,
    parent_id bigint,
    assign_permission bigint,
    breadcrumb_name text,
    order_index integer,
    slug_name text
);
 *   DROP TABLE public.tbl_module_permissions;
       public         heap    postgres    false            �            1259    52736    tbl_module_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_module_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tbl_module_permissions_id_seq;
       public          postgres    false    252            C           0    0    tbl_module_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.tbl_module_permissions_id_seq OWNED BY public.tbl_module_permissions.id;
          public          postgres    false    253            �            1259    52737    tbl_modules    TABLE     S  CREATE TABLE public.tbl_modules (
    id integer NOT NULL,
    module_name text,
    is_active bigint DEFAULT 1,
    created_by bigint,
    created_on timestamp without time zone,
    default_module bigint DEFAULT 0,
    parent_id bigint,
    assign_permission integer,
    icon_path text,
    description text,
    order_index integer
);
    DROP TABLE public.tbl_modules;
       public         heap    postgres    false            �            1259    52744    tbl_modules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_modules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 )   DROP SEQUENCE public.tbl_modules_id_seq;
       public          postgres    false    254            D           0    0    tbl_modules_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tbl_modules_id_seq OWNED BY public.tbl_modules.id;
          public          postgres    false    255                        1259    52745    tbl_page    TABLE     i  CREATE TABLE public.tbl_page (
    id integer NOT NULL,
    spaces_id integer,
    page_group_id integer,
    parent_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    is_deleted integer
);
    DROP TABLE public.tbl_page;
       public         heap    postgres    false                       1259    52748    tbl_page_aliases    TABLE     �  CREATE TABLE public.tbl_page_aliases (
    id integer NOT NULL,
    page_id integer,
    language_id integer,
    page_title character varying(255) DEFAULT NULL::character varying,
    page_slug character varying(255) DEFAULT NULL::character varying,
    page_description character varying,
    published_on timestamp without time zone,
    author character varying(255) DEFAULT NULL::character varying,
    excerpt character varying,
    featured_images character varying,
    access public.enum_page_access,
    meta_details json,
    status public.enum_page_status,
    allow_comments boolean,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    deleted_on timestamp without time zone,
    deleted_by integer,
    order_index integer,
    page_suborder integer,
    is_deleted integer,
    last_revision_no bigint,
    last_revision_date timestamp without time zone,
    read_time integer
);
 $   DROP TABLE public.tbl_page_aliases;
       public         heap    postgres    false    912    906                       1259    52756    tbl_page_aliases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_page_aliases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_page_aliases_id_seq;
       public          postgres    false    257            E           0    0    tbl_page_aliases_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_page_aliases_id_seq OWNED BY public.tbl_page_aliases.id;
          public          postgres    false    258                       1259    52757    tbl_page_aliases_log    TABLE     R  CREATE TABLE public.tbl_page_aliases_log (
    id integer NOT NULL,
    page_id integer,
    language_id integer,
    page_title character varying(255) DEFAULT NULL::character varying,
    page_slug character varying(255) DEFAULT NULL::character varying,
    page_description character varying,
    published_on timestamp without time zone,
    author character varying(255) DEFAULT NULL::character varying,
    excerpt character varying,
    featured_images character varying,
    access public.enum_page_access,
    meta_details json,
    status public.enum_page_status,
    allow_comments boolean,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    deleted_on timestamp without time zone,
    deleted_by integer,
    read_time integer
);
 (   DROP TABLE public.tbl_page_aliases_log;
       public         heap    postgres    false    912    906                       1259    52765    tbl_page_aliases_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_page_aliases_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbl_page_aliases_log_id_seq;
       public          postgres    false    259            F           0    0    tbl_page_aliases_log_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tbl_page_aliases_log_id_seq OWNED BY public.tbl_page_aliases_log.id;
          public          postgres    false    260                       1259    52766    tbl_page_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_page_id_seq;
       public          postgres    false    256            G           0    0    tbl_page_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_page_id_seq OWNED BY public.tbl_page.id;
          public          postgres    false    261                       1259    52767    tbl_pages_access_coutrol    TABLE     �   CREATE TABLE public.tbl_pages_access_coutrol (
    id integer NOT NULL,
    page_id integer,
    access_type public.enum_access_type,
    access_item_id integer[]
);
 ,   DROP TABLE public.tbl_pages_access_coutrol;
       public         heap    postgres    false    903                       1259    52772    tbl_pages_access_coutrol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_pages_access_coutrol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbl_pages_access_coutrol_id_seq;
       public          postgres    false    262            H           0    0    tbl_pages_access_coutrol_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tbl_pages_access_coutrol_id_seq OWNED BY public.tbl_pages_access_coutrol.id;
          public          postgres    false    263                       1259    52773    tbl_pages_categories    TABLE     i  CREATE TABLE public.tbl_pages_categories (
    id integer NOT NULL,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer,
    parent_id integer DEFAULT 0
);
 (   DROP TABLE public.tbl_pages_categories;
       public         heap    postgres    false            	           1259    52778    tbl_pages_categories_aliases    TABLE     _  CREATE TABLE public.tbl_pages_categories_aliases (
    id integer NOT NULL,
    page_category_id integer DEFAULT 0,
    language_id integer,
    category_name character varying(255) DEFAULT NULL::character varying,
    category_slug character varying(255) DEFAULT NULL::character varying,
    description character varying,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer,
    parent_id integer
);
 0   DROP TABLE public.tbl_pages_categories_aliases;
       public         heap    postgres    false            
           1259    52787 #   tbl_pages_categories_aliases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_pages_categories_aliases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tbl_pages_categories_aliases_id_seq;
       public          postgres    false    265            I           0    0 #   tbl_pages_categories_aliases_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.tbl_pages_categories_aliases_id_seq OWNED BY public.tbl_pages_categories_aliases.id;
          public          postgres    false    266                       1259    52788    tbl_pages_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_pages_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbl_pages_categories_id_seq;
       public          postgres    false    264            J           0    0    tbl_pages_categories_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tbl_pages_categories_id_seq OWNED BY public.tbl_pages_categories.id;
          public          postgres    false    267                       1259    52789    tbl_pages_group    TABLE     Z  CREATE TABLE public.tbl_pages_group (
    id integer NOT NULL,
    spaces_id integer,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer
);
 #   DROP TABLE public.tbl_pages_group;
       public         heap    postgres    false                       1259    52793    tbl_pages_group_aliases    TABLE     O  CREATE TABLE public.tbl_pages_group_aliases (
    id integer NOT NULL,
    page_group_id integer,
    language_id integer,
    group_name character varying(255) DEFAULT NULL::character varying,
    group_slug character varying(255) DEFAULT NULL::character varying,
    group_description character varying,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer,
    order_index integer
);
 +   DROP TABLE public.tbl_pages_group_aliases;
       public         heap    postgres    false                       1259    52801    tbl_pages_group_aliases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_pages_group_aliases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbl_pages_group_aliases_id_seq;
       public          postgres    false    269            K           0    0    tbl_pages_group_aliases_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tbl_pages_group_aliases_id_seq OWNED BY public.tbl_pages_group_aliases.id;
          public          postgres    false    270                       1259    52802    tbl_pages_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_pages_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbl_pages_group_id_seq;
       public          postgres    false    268            L           0    0    tbl_pages_group_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tbl_pages_group_id_seq OWNED BY public.tbl_pages_group.id;
          public          postgres    false    271                       1259    52803    tbl_permitted_users    TABLE     �   CREATE TABLE public.tbl_permitted_users (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permitted_user_id integer NOT NULL,
    access_type integer,
    created_by integer,
    created_on timestamp without time zone
);
 '   DROP TABLE public.tbl_permitted_users;
       public         heap    postgres    false                       1259    52806    tbl_permitted_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_permitted_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_permitted_users_id_seq;
       public          postgres    false    272            M           0    0    tbl_permitted_users_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_permitted_users_id_seq OWNED BY public.tbl_permitted_users.id;
          public          postgres    false    273                       1259    52807    tbl_role_permissions    TABLE     �   CREATE TABLE public.tbl_role_permissions (
    id integer NOT NULL,
    role_id bigint,
    permission_id bigint,
    created_by bigint,
    created_on timestamp without time zone,
    created_date text
);
 (   DROP TABLE public.tbl_role_permissions;
       public         heap    postgres    false                       1259    52812    tbl_role_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_role_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbl_role_permissions_id_seq;
       public          postgres    false    274            N           0    0    tbl_role_permissions_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tbl_role_permissions_id_seq OWNED BY public.tbl_role_permissions.id;
          public          postgres    false    275                       1259    52813    tbl_role_user    TABLE       CREATE TABLE public.tbl_role_user (
    id integer NOT NULL,
    role_id integer NOT NULL,
    user_id integer NOT NULL,
    created_by integer,
    modified_by integer,
    modified_on timestamp without time zone,
    created_on timestamp without time zone
);
 !   DROP TABLE public.tbl_role_user;
       public         heap    postgres    false                       1259    52816    tbl_role_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_role_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbl_role_user_id_seq;
       public          postgres    false    276            O           0    0    tbl_role_user_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tbl_role_user_id_seq OWNED BY public.tbl_role_user.id;
          public          postgres    false    277                       1259    52817 	   tbl_roles    TABLE     O  CREATE TABLE public.tbl_roles (
    id integer NOT NULL,
    name text,
    description text,
    slug text,
    is_active bigint DEFAULT 1,
    is_deleted bigint DEFAULT 0,
    created_on timestamp without time zone,
    created_by bigint,
    modified_on timestamp without time zone,
    modified_by bigint,
    created_date text
);
    DROP TABLE public.tbl_roles;
       public         heap    postgres    false                       1259    52824    tbl_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_roles_id_seq;
       public          postgres    false    278            P           0    0    tbl_roles_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_roles_id_seq OWNED BY public.tbl_roles.id;
          public          postgres    false    279                       1259    52825 
   tbl_spaces    TABLE     \  CREATE TABLE public.tbl_spaces (
    id integer NOT NULL,
    page_category_id integer,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer
);
    DROP TABLE public.tbl_spaces;
       public         heap    postgres    false                       1259    52829    tbl_spaces_aliases    TABLE     R  CREATE TABLE public.tbl_spaces_aliases (
    id integer NOT NULL,
    spaces_id integer,
    language_id integer,
    spaces_name character varying(255) DEFAULT NULL::character varying,
    spaces_slug character varying(255) DEFAULT NULL::character varying,
    spaces_description character varying,
    created_on timestamp without time zone NOT NULL,
    created_by integer NOT NULL,
    modified_on timestamp without time zone,
    modified_by integer,
    is_deleted integer DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by integer,
    image_path character varying
);
 &   DROP TABLE public.tbl_spaces_aliases;
       public         heap    postgres    false                       1259    52837    tbl_spaces_aliases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_spaces_aliases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbl_spaces_aliases_id_seq;
       public          postgres    false    281            Q           0    0    tbl_spaces_aliases_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tbl_spaces_aliases_id_seq OWNED BY public.tbl_spaces_aliases.id;
          public          postgres    false    282                       1259    52838    tbl_spaces_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_spaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbl_spaces_id_seq;
       public          postgres    false    280            R           0    0    tbl_spaces_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tbl_spaces_id_seq OWNED BY public.tbl_spaces.id;
          public          postgres    false    283                       1259    52839    tbl_user_personalizes    TABLE     o  CREATE TABLE public.tbl_user_personalizes (
    id integer NOT NULL,
    user_id integer,
    menu_background_color character varying,
    font_color character varying,
    icon_color character varying,
    logo_path character varying,
    created_on timestamp without time zone,
    modified_on timestamp without time zone,
    expand_logo_path character varying
);
 )   DROP TABLE public.tbl_user_personalizes;
       public         heap    postgres    false                       1259    52844    tbl_user_personalizes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_user_personalizes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbl_user_personalizes_id_seq;
       public          postgres    false    284            S           0    0    tbl_user_personalizes_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tbl_user_personalizes_id_seq OWNED BY public.tbl_user_personalizes.id;
          public          postgres    false    285                       1259    52845 	   tbl_users    TABLE     �  CREATE TABLE public.tbl_users (
    id integer NOT NULL,
    uuid text,
    role_id bigint,
    first_name text,
    last_name text,
    email text,
    username text,
    password text,
    mobile_no text,
    is_active bigint DEFAULT 1,
    profile_image text,
    profile_image_path text,
    created_on timestamp without time zone NOT NULL,
    created_by bigint,
    modified_on timestamp without time zone,
    data_access bigint DEFAULT 0,
    modified_by bigint,
    last_login timestamp without time zone,
    is_deleted bigint DEFAULT 0,
    deleted_on timestamp without time zone,
    deleted_by bigint,
    default_language_id bigint
);
    DROP TABLE public.tbl_users;
       public         heap    postgres    false                       1259    52853    tbl_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_users_id_seq;
       public          postgres    false    286            T           0    0    tbl_users_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_users_id_seq OWNED BY public.tbl_users.id;
          public          postgres    false    287            g           2604    52854    tbl_access_control id    DEFAULT     ~   ALTER TABLE ONLY public.tbl_access_control ALTER COLUMN id SET DEFAULT nextval('public.tbl_access_control_id_seq'::regclass);
 D   ALTER TABLE public.tbl_access_control ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            i           2604    52855    tbl_access_control_pages id    DEFAULT     �   ALTER TABLE ONLY public.tbl_access_control_pages ALTER COLUMN id SET DEFAULT nextval('public.tbl_access_control_pages_id_seq'::regclass);
 J   ALTER TABLE public.tbl_access_control_pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            k           2604    52856     tbl_access_control_user_group id    DEFAULT     �   ALTER TABLE ONLY public.tbl_access_control_user_group ALTER COLUMN id SET DEFAULT nextval('public.tbl_access_control_user_group_id_seq'::regclass);
 O   ALTER TABLE public.tbl_access_control_user_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            p           2604    52857    tbl_categories id    DEFAULT     v   ALTER TABLE ONLY public.tbl_categories ALTER COLUMN id SET DEFAULT nextval('public.tbl_categories_id_seq'::regclass);
 @   ALTER TABLE public.tbl_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            q           2604    52858    tbl_channel_category id    DEFAULT     �   ALTER TABLE ONLY public.tbl_channel_category ALTER COLUMN id SET DEFAULT nextval('public.tbl_channel_category_id_seq'::regclass);
 F   ALTER TABLE public.tbl_channel_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            t           2604    52859    tbl_channel_entries id    DEFAULT     �   ALTER TABLE ONLY public.tbl_channel_entries ALTER COLUMN id SET DEFAULT nextval('public.tbl_channel_entries_id_seq'::regclass);
 E   ALTER TABLE public.tbl_channel_entries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            u           2604    52860    tbl_channel_entry_fields id    DEFAULT     �   ALTER TABLE ONLY public.tbl_channel_entry_fields ALTER COLUMN id SET DEFAULT nextval('public.tbl_channel_entry_fields_id_seq'::regclass);
 J   ALTER TABLE public.tbl_channel_entry_fields ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            y           2604    52861    tbl_channels id    DEFAULT     r   ALTER TABLE ONLY public.tbl_channels ALTER COLUMN id SET DEFAULT nextval('public.tbl_channels_id_seq'::regclass);
 >   ALTER TABLE public.tbl_channels ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            z           2604    52862    tbl_email_template id    DEFAULT     ~   ALTER TABLE ONLY public.tbl_email_template ALTER COLUMN id SET DEFAULT nextval('public.tbl_email_template_id_seq'::regclass);
 D   ALTER TABLE public.tbl_email_template ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            |           2604    52863    tbl_field_groups id    DEFAULT     z   ALTER TABLE ONLY public.tbl_field_groups ALTER COLUMN id SET DEFAULT nextval('public.tbl_field_groups_id_seq'::regclass);
 B   ALTER TABLE public.tbl_field_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            ~           2604    52864    tbl_field_options id    DEFAULT     |   ALTER TABLE ONLY public.tbl_field_options ALTER COLUMN id SET DEFAULT nextval('public.tbl_field_options_id_seq'::regclass);
 C   ALTER TABLE public.tbl_field_options ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    52865    tbl_field_types id    DEFAULT     x   ALTER TABLE ONLY public.tbl_field_types ALTER COLUMN id SET DEFAULT nextval('public.tbl_field_types_id_seq'::regclass);
 A   ALTER TABLE public.tbl_field_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    52866    tbl_fields id    DEFAULT     n   ALTER TABLE ONLY public.tbl_fields ALTER COLUMN id SET DEFAULT nextval('public.tbl_fields_id_seq'::regclass);
 <   ALTER TABLE public.tbl_fields ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    52867    tbl_group_fields id    DEFAULT     z   ALTER TABLE ONLY public.tbl_group_fields ALTER COLUMN id SET DEFAULT nextval('public.tbl_group_fields_id_seq'::regclass);
 B   ALTER TABLE public.tbl_group_fields ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    52868    tbl_language id    DEFAULT     r   ALTER TABLE ONLY public.tbl_language ALTER COLUMN id SET DEFAULT nextval('public.tbl_language_id_seq'::regclass);
 >   ALTER TABLE public.tbl_language ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    52869    tbl_media id    DEFAULT     l   ALTER TABLE ONLY public.tbl_media ALTER COLUMN id SET DEFAULT nextval('public.tbl_media_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_media ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    52870    tbl_member_group id    DEFAULT     z   ALTER TABLE ONLY public.tbl_member_group ALTER COLUMN id SET DEFAULT nextval('public.tbl_member_group_id_seq'::regclass);
 B   ALTER TABLE public.tbl_member_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            �           2604    52871    tbl_member_groups id    DEFAULT     |   ALTER TABLE ONLY public.tbl_member_groups ALTER COLUMN id SET DEFAULT nextval('public.tbl_member_groups_id_seq'::regclass);
 C   ALTER TABLE public.tbl_member_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            �           2604    52872    tbl_member_notes_highlights id    DEFAULT     �   ALTER TABLE ONLY public.tbl_member_notes_highlights ALTER COLUMN id SET DEFAULT nextval('public.tbl_member_notes_highlights_id_seq'::regclass);
 M   ALTER TABLE public.tbl_member_notes_highlights ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248            �           2604    52873    tbl_members id    DEFAULT     p   ALTER TABLE ONLY public.tbl_members ALTER COLUMN id SET DEFAULT nextval('public.tbl_members_id_seq'::regclass);
 =   ALTER TABLE public.tbl_members ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250            �           2604    52874    tbl_module_permissions id    DEFAULT     �   ALTER TABLE ONLY public.tbl_module_permissions ALTER COLUMN id SET DEFAULT nextval('public.tbl_module_permissions_id_seq'::regclass);
 H   ALTER TABLE public.tbl_module_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252            �           2604    52875    tbl_modules id    DEFAULT     p   ALTER TABLE ONLY public.tbl_modules ALTER COLUMN id SET DEFAULT nextval('public.tbl_modules_id_seq'::regclass);
 =   ALTER TABLE public.tbl_modules ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254            �           2604    52876    tbl_page id    DEFAULT     j   ALTER TABLE ONLY public.tbl_page ALTER COLUMN id SET DEFAULT nextval('public.tbl_page_id_seq'::regclass);
 :   ALTER TABLE public.tbl_page ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    256            �           2604    52877    tbl_page_aliases id    DEFAULT     z   ALTER TABLE ONLY public.tbl_page_aliases ALTER COLUMN id SET DEFAULT nextval('public.tbl_page_aliases_id_seq'::regclass);
 B   ALTER TABLE public.tbl_page_aliases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257            �           2604    52878    tbl_page_aliases_log id    DEFAULT     �   ALTER TABLE ONLY public.tbl_page_aliases_log ALTER COLUMN id SET DEFAULT nextval('public.tbl_page_aliases_log_id_seq'::regclass);
 F   ALTER TABLE public.tbl_page_aliases_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259            �           2604    52879    tbl_pages_access_coutrol id    DEFAULT     �   ALTER TABLE ONLY public.tbl_pages_access_coutrol ALTER COLUMN id SET DEFAULT nextval('public.tbl_pages_access_coutrol_id_seq'::regclass);
 J   ALTER TABLE public.tbl_pages_access_coutrol ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    262            �           2604    52880    tbl_pages_categories id    DEFAULT     �   ALTER TABLE ONLY public.tbl_pages_categories ALTER COLUMN id SET DEFAULT nextval('public.tbl_pages_categories_id_seq'::regclass);
 F   ALTER TABLE public.tbl_pages_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    264            �           2604    52881    tbl_pages_categories_aliases id    DEFAULT     �   ALTER TABLE ONLY public.tbl_pages_categories_aliases ALTER COLUMN id SET DEFAULT nextval('public.tbl_pages_categories_aliases_id_seq'::regclass);
 N   ALTER TABLE public.tbl_pages_categories_aliases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265            �           2604    52882    tbl_pages_group id    DEFAULT     x   ALTER TABLE ONLY public.tbl_pages_group ALTER COLUMN id SET DEFAULT nextval('public.tbl_pages_group_id_seq'::regclass);
 A   ALTER TABLE public.tbl_pages_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    268            �           2604    52883    tbl_pages_group_aliases id    DEFAULT     �   ALTER TABLE ONLY public.tbl_pages_group_aliases ALTER COLUMN id SET DEFAULT nextval('public.tbl_pages_group_aliases_id_seq'::regclass);
 I   ALTER TABLE public.tbl_pages_group_aliases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269            �           2604    52884    tbl_permitted_users id    DEFAULT     �   ALTER TABLE ONLY public.tbl_permitted_users ALTER COLUMN id SET DEFAULT nextval('public.tbl_permitted_users_id_seq'::regclass);
 E   ALTER TABLE public.tbl_permitted_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272            �           2604    52885    tbl_role_permissions id    DEFAULT     �   ALTER TABLE ONLY public.tbl_role_permissions ALTER COLUMN id SET DEFAULT nextval('public.tbl_role_permissions_id_seq'::regclass);
 F   ALTER TABLE public.tbl_role_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    274            �           2604    52886    tbl_role_user id    DEFAULT     t   ALTER TABLE ONLY public.tbl_role_user ALTER COLUMN id SET DEFAULT nextval('public.tbl_role_user_id_seq'::regclass);
 ?   ALTER TABLE public.tbl_role_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    276            �           2604    52887    tbl_roles id    DEFAULT     l   ALTER TABLE ONLY public.tbl_roles ALTER COLUMN id SET DEFAULT nextval('public.tbl_roles_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    278            �           2604    52888    tbl_spaces id    DEFAULT     n   ALTER TABLE ONLY public.tbl_spaces ALTER COLUMN id SET DEFAULT nextval('public.tbl_spaces_id_seq'::regclass);
 <   ALTER TABLE public.tbl_spaces ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    280            �           2604    52889    tbl_spaces_aliases id    DEFAULT     ~   ALTER TABLE ONLY public.tbl_spaces_aliases ALTER COLUMN id SET DEFAULT nextval('public.tbl_spaces_aliases_id_seq'::regclass);
 D   ALTER TABLE public.tbl_spaces_aliases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281            �           2604    52890    tbl_user_personalizes id    DEFAULT     �   ALTER TABLE ONLY public.tbl_user_personalizes ALTER COLUMN id SET DEFAULT nextval('public.tbl_user_personalizes_id_seq'::regclass);
 G   ALTER TABLE public.tbl_user_personalizes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    284            �           2604    52891    tbl_users id    DEFAULT     l   ALTER TABLE ONLY public.tbl_users ALTER COLUMN id SET DEFAULT nextval('public.tbl_users_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    286            �          0    52581    tbl_access_control 
   TABLE DATA           �   COPY public.tbl_access_control (id, access_control_name, access_control_slug, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by) FROM stdin;
    public          postgres    false    209   ��      �          0    52590    tbl_access_control_pages 
   TABLE DATA           �   COPY public.tbl_access_control_pages (id, access_control_user_group_id, spaces_id, page_group_id, page_id, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by, channel_id, entry_id) FROM stdin;
    public          postgres    false    211   ��      �          0    52595    tbl_access_control_user_group 
   TABLE DATA           �   COPY public.tbl_access_control_user_group (id, access_control_id, member_group_id, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by) FROM stdin;
    public          postgres    false    213   �      �          0    52600    tbl_categories 
   TABLE DATA           �   COPY public.tbl_categories (id, category_name, category_slug, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by, parent_id, description, image_path) FROM stdin;
    public          postgres    false    215   4�      �          0    52610    tbl_channel_category 
   TABLE DATA           c   COPY public.tbl_channel_category (id, channel_id, category_id, created_at, created_on) FROM stdin;
    public          postgres    false    217   Q�      �          0    52616    tbl_channel_entries 
   TABLE DATA           /  COPY public.tbl_channel_entries (id, title, description, user_id, channel_id, status, is_active, is_deleted, created_on, created_by, modified_on, modified_by, deleted_on, deleted_by, slug, cover_image, thumbnail_image, meta_title, meta_description, keyword, categories_id, related_articles) FROM stdin;
    public          postgres    false    219   n�      �          0    52624    tbl_channel_entry_fields 
   TABLE DATA           �   COPY public.tbl_channel_entry_fields (id, field_name, field_value, channel_entry_id, field_id, created_on, created_by, modified_on, modified_by, deleted_by, deleted_on) FROM stdin;
    public          postgres    false    221   ��      �          0    52630    tbl_channel_entry_media 
   TABLE DATA           �   COPY public.tbl_channel_entry_media (id, media_type_id, channel_entry_id, file_name, file_path, created_by, created_on, modified_on, modified_by, is_deleted, deleted_on, deleted_by) FROM stdin;
    public          postgres    false    223   ��      �          0    52636    tbl_channels 
   TABLE DATA           �   COPY public.tbl_channels (id, channel_name, slug_name, field_group_id, is_active, is_deleted, created_on, created_by, modified_on, modified_by, channel_description) FROM stdin;
    public          postgres    false    224   ��      �          0    52644    tbl_email_template 
   TABLE DATA           �   COPY public.tbl_email_template (id, template_name, template_slug, template_subject, template_message, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, is_deleted, is_active) FROM stdin;
    public          postgres    false    226   ��      �          0    52650    tbl_field_groups 
   TABLE DATA           �   COPY public.tbl_field_groups (id, group_name, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by) FROM stdin;
    public          postgres    false    228   G�      �          0    52655    tbl_field_options 
   TABLE DATA           �   COPY public.tbl_field_options (id, option_name, option_value, field_id, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by) FROM stdin;
    public          postgres    false    230   d�      �          0    52662    tbl_field_types 
   TABLE DATA           �   COPY public.tbl_field_types (id, type_name, type_slug, is_active, is_deleted, created_by, created_on, modified_by, modified_on) FROM stdin;
    public          postgres    false    232   ��      �          0    52670 
   tbl_fields 
   TABLE DATA           B  COPY public.tbl_fields (id, field_name, field_type_id, mandatory_field, option_exist, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by, field_desc, order_index, initial_value, placeholder, image_path, datetime_format, time_format, url, section_parent_id, character_allowed) FROM stdin;
    public          postgres    false    234   e�      �          0    52679    tbl_group_fields 
   TABLE DATA           D   COPY public.tbl_group_fields (id, channel_id, field_id) FROM stdin;
    public          postgres    false    236   ��      �          0    52683    tbl_language 
   TABLE DATA           �   COPY public.tbl_language (id, language_name, language_code, image_path, json_path, is_status, is_default, created_by, created_on, modified_on, modified_by, is_deleted, deleted_on, deleted_by) FROM stdin;
    public          postgres    false    238   ��      �          0    52689 	   tbl_media 
   TABLE DATA           �   COPY public.tbl_media (id, name, parent_id, is_deleted, created_by, created_at, modified_by, modified_at, deleted_by, deleted_at, media_type) FROM stdin;
    public          postgres    false    240   }�      �          0    52696    tbl_media_type 
   TABLE DATA           8   COPY public.tbl_media_type (id, type, slug) FROM stdin;
    public          postgres    false    243   ��      �          0    52702    tbl_member_group 
   TABLE DATA           �   COPY public.tbl_member_group (id, name, slug, is_active, is_deleted, created_on, created_by, modified_on, modified_by, description) FROM stdin;
    public          postgres    false    244   ��      �          0    52710    tbl_member_groups 
   TABLE DATA           �   COPY public.tbl_member_groups (id, name, slug, description, is_active, is_deleted, created_on, created_by, modified_on, modified_by) FROM stdin;
    public          postgres    false    246   m�                0    52716    tbl_member_notes_highlights 
   TABLE DATA           �   COPY public.tbl_member_notes_highlights (id, member_id, page_id, notes_highlights_content, notes_highlights_type, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, is_deleted, highlights_configuration) FROM stdin;
    public          postgres    false    248   ��                0    52722    tbl_members 
   TABLE DATA             COPY public.tbl_members (id, uuid, first_name, last_name, email, username, password, mobile_no, is_active, member_group_id, profile_image, profile_image_path, created_on, created_by, modified_on, modified_by, last_login, is_deleted, deleted_on, deleted_by, otp, otp_expiry) FROM stdin;
    public          postgres    false    250   ��                0    52730    tbl_module_permissions 
   TABLE DATA           �   COPY public.tbl_module_permissions (id, route_name, display_name, description, module_id, created_by, created_on, modified_by, modified_on, full_access_permission, parent_id, assign_permission, breadcrumb_name, order_index, slug_name) FROM stdin;
    public          postgres    false    252   �                0    52737    tbl_modules 
   TABLE DATA           �   COPY public.tbl_modules (id, module_name, is_active, created_by, created_on, default_module, parent_id, assign_permission, icon_path, description, order_index) FROM stdin;
    public          postgres    false    254   <�      	          0    52745    tbl_page 
   TABLE DATA           �   COPY public.tbl_page (id, spaces_id, page_group_id, parent_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, is_deleted) FROM stdin;
    public          postgres    false    256   V�      
          0    52748    tbl_page_aliases 
   TABLE DATA           n  COPY public.tbl_page_aliases (id, page_id, language_id, page_title, page_slug, page_description, published_on, author, excerpt, featured_images, access, meta_details, status, allow_comments, created_on, created_by, modified_on, modified_by, deleted_on, deleted_by, order_index, page_suborder, is_deleted, last_revision_no, last_revision_date, read_time) FROM stdin;
    public          postgres    false    257   s�                0    52757    tbl_page_aliases_log 
   TABLE DATA           $  COPY public.tbl_page_aliases_log (id, page_id, language_id, page_title, page_slug, page_description, published_on, author, excerpt, featured_images, access, meta_details, status, allow_comments, created_on, created_by, modified_on, modified_by, deleted_on, deleted_by, read_time) FROM stdin;
    public          postgres    false    259   ��                0    52767    tbl_pages_access_coutrol 
   TABLE DATA           \   COPY public.tbl_pages_access_coutrol (id, page_id, access_type, access_item_id) FROM stdin;
    public          postgres    false    262   ��                0    52773    tbl_pages_categories 
   TABLE DATA           �   COPY public.tbl_pages_categories (id, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by, parent_id) FROM stdin;
    public          postgres    false    264   ��                0    52778    tbl_pages_categories_aliases 
   TABLE DATA           �   COPY public.tbl_pages_categories_aliases (id, page_category_id, language_id, category_name, category_slug, description, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by, parent_id) FROM stdin;
    public          postgres    false    265   �                0    52789    tbl_pages_group 
   TABLE DATA           �   COPY public.tbl_pages_group (id, spaces_id, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by) FROM stdin;
    public          postgres    false    268   ��                0    52793    tbl_pages_group_aliases 
   TABLE DATA           �   COPY public.tbl_pages_group_aliases (id, page_group_id, language_id, group_name, group_slug, group_description, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by, order_index) FROM stdin;
    public          postgres    false    269   ��                0    52803    tbl_permitted_users 
   TABLE DATA           r   COPY public.tbl_permitted_users (id, user_id, permitted_user_id, access_type, created_by, created_on) FROM stdin;
    public          postgres    false    272   ��                0    52807    tbl_role_permissions 
   TABLE DATA           p   COPY public.tbl_role_permissions (id, role_id, permission_id, created_by, created_on, created_date) FROM stdin;
    public          postgres    false    274   �                0    52813    tbl_role_user 
   TABLE DATA           o   COPY public.tbl_role_user (id, role_id, user_id, created_by, modified_by, modified_on, created_on) FROM stdin;
    public          postgres    false    276   .�                0    52817 	   tbl_roles 
   TABLE DATA           �   COPY public.tbl_roles (id, name, description, slug, is_active, is_deleted, created_on, created_by, modified_on, modified_by, created_date) FROM stdin;
    public          postgres    false    278   K�      !          0    52825 
   tbl_spaces 
   TABLE DATA           �   COPY public.tbl_spaces (id, page_category_id, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by) FROM stdin;
    public          postgres    false    280   ��      "          0    52829    tbl_spaces_aliases 
   TABLE DATA           �   COPY public.tbl_spaces_aliases (id, spaces_id, language_id, spaces_name, spaces_slug, spaces_description, created_on, created_by, modified_on, modified_by, is_deleted, deleted_on, deleted_by, image_path) FROM stdin;
    public          postgres    false    281   ��      %          0    52839    tbl_user_personalizes 
   TABLE DATA           �   COPY public.tbl_user_personalizes (id, user_id, menu_background_color, font_color, icon_color, logo_path, created_on, modified_on, expand_logo_path) FROM stdin;
    public          postgres    false    284   �      '          0    52845 	   tbl_users 
   TABLE DATA           %  COPY public.tbl_users (id, uuid, role_id, first_name, last_name, email, username, password, mobile_no, is_active, profile_image, profile_image_path, created_on, created_by, modified_on, data_access, modified_by, last_login, is_deleted, deleted_on, deleted_by, default_language_id) FROM stdin;
    public          postgres    false    286   1�      U           0    0    tbl_access_control_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tbl_access_control_id_seq', 1, false);
          public          postgres    false    210            V           0    0    tbl_access_control_pages_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tbl_access_control_pages_id_seq', 1, false);
          public          postgres    false    212            W           0    0 $   tbl_access_control_user_group_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.tbl_access_control_user_group_id_seq', 1, false);
          public          postgres    false    214            X           0    0    tbl_categories_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbl_categories_id_seq', 1, true);
          public          postgres    false    216            Y           0    0    tbl_channel_category_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tbl_channel_category_id_seq', 1, false);
          public          postgres    false    218            Z           0    0    tbl_channel_entries_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tbl_channel_entries_id_seq', 113, true);
          public          postgres    false    220            [           0    0    tbl_channel_entry_fields_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tbl_channel_entry_fields_id_seq', 1, false);
          public          postgres    false    222            \           0    0    tbl_channels_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbl_channels_id_seq', 105, true);
          public          postgres    false    225            ]           0    0    tbl_email_template_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tbl_email_template_id_seq', 1, false);
          public          postgres    false    227            ^           0    0    tbl_field_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tbl_field_groups_id_seq', 1, false);
          public          postgres    false    229            _           0    0    tbl_field_options_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbl_field_options_id_seq', 1, false);
          public          postgres    false    231            `           0    0    tbl_field_types_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tbl_field_types_id_seq', 13, true);
          public          postgres    false    233            a           0    0    tbl_fields_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbl_fields_id_seq', 395, true);
          public          postgres    false    235            b           0    0    tbl_group_fields_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbl_group_fields_id_seq', 382, true);
          public          postgres    false    237            c           0    0    tbl_language_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbl_language_id_seq', 7, true);
          public          postgres    false    239            d           0    0    tbl_media_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tbl_media_id_seq', 1, false);
          public          postgres    false    241            e           0    0    tbl_media_type_id    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tbl_media_type_id', 2, true);
          public          postgres    false    242            f           0    0    tbl_member_group_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tbl_member_group_id_seq', 13, true);
          public          postgres    false    245            g           0    0    tbl_member_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tbl_member_groups_id_seq', 4, true);
          public          postgres    false    247            h           0    0 "   tbl_member_notes_highlights_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tbl_member_notes_highlights_id_seq', 1, false);
          public          postgres    false    249            i           0    0    tbl_members_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbl_members_id_seq', 1, false);
          public          postgres    false    251            j           0    0    tbl_module_permissions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tbl_module_permissions_id_seq', 151, true);
          public          postgres    false    253            k           0    0    tbl_modules_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbl_modules_id_seq', 28, true);
          public          postgres    false    255            l           0    0    tbl_page_aliases_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tbl_page_aliases_id_seq', 1, false);
          public          postgres    false    258            m           0    0    tbl_page_aliases_log_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tbl_page_aliases_log_id_seq', 1, false);
          public          postgres    false    260            n           0    0    tbl_page_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tbl_page_id_seq', 1, false);
          public          postgres    false    261            o           0    0    tbl_pages_access_coutrol_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tbl_pages_access_coutrol_id_seq', 1, false);
          public          postgres    false    263            p           0    0 #   tbl_pages_categories_aliases_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tbl_pages_categories_aliases_id_seq', 1, true);
          public          postgres    false    266            q           0    0    tbl_pages_categories_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tbl_pages_categories_id_seq', 3, true);
          public          postgres    false    267            r           0    0    tbl_pages_group_aliases_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tbl_pages_group_aliases_id_seq', 1, false);
          public          postgres    false    270            s           0    0    tbl_pages_group_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tbl_pages_group_id_seq', 1, false);
          public          postgres    false    271            t           0    0    tbl_permitted_users_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tbl_permitted_users_id_seq', 1, false);
          public          postgres    false    273            u           0    0    tbl_role_permissions_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tbl_role_permissions_id_seq', 1, false);
          public          postgres    false    275            v           0    0    tbl_role_user_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbl_role_user_id_seq', 1, false);
          public          postgres    false    277            w           0    0    tbl_roles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tbl_roles_id_seq', 49, true);
          public          postgres    false    279            x           0    0    tbl_spaces_aliases_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tbl_spaces_aliases_id_seq', 1, false);
          public          postgres    false    282            y           0    0    tbl_spaces_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tbl_spaces_id_seq', 1, false);
          public          postgres    false    283            z           0    0    tbl_user_personalizes_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tbl_user_personalizes_id_seq', 1, false);
          public          postgres    false    285            {           0    0    tbl_users_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tbl_users_id_seq', 36, true);
          public          postgres    false    287            �           2606    52956 6   tbl_access_control_pages tbl_access_control_pages_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.tbl_access_control_pages
    ADD CONSTRAINT tbl_access_control_pages_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.tbl_access_control_pages DROP CONSTRAINT tbl_access_control_pages_pkey;
       public            postgres    false    211            �           2606    52958 *   tbl_access_control tbl_access_control_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tbl_access_control
    ADD CONSTRAINT tbl_access_control_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.tbl_access_control DROP CONSTRAINT tbl_access_control_pkey;
       public            postgres    false    209            �           2606    52960 @   tbl_access_control_user_group tbl_access_control_user_group_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.tbl_access_control_user_group
    ADD CONSTRAINT tbl_access_control_user_group_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.tbl_access_control_user_group DROP CONSTRAINT tbl_access_control_user_group_pkey;
       public            postgres    false    213            �           2606    52962 "   tbl_categories tbl_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_categories
    ADD CONSTRAINT tbl_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tbl_categories DROP CONSTRAINT tbl_categories_pkey;
       public            postgres    false    215            �           2606    52964 .   tbl_channel_category tbl_channel_category_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_channel_category
    ADD CONSTRAINT tbl_channel_category_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tbl_channel_category DROP CONSTRAINT tbl_channel_category_pkey;
       public            postgres    false    217            �           2606    52966 ,   tbl_channel_entries tbl_channel_entries_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_channel_entries
    ADD CONSTRAINT tbl_channel_entries_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tbl_channel_entries DROP CONSTRAINT tbl_channel_entries_pkey;
       public            postgres    false    219            �           2606    52968 6   tbl_channel_entry_fields tbl_channel_entry_fields_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.tbl_channel_entry_fields
    ADD CONSTRAINT tbl_channel_entry_fields_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.tbl_channel_entry_fields DROP CONSTRAINT tbl_channel_entry_fields_pkey;
       public            postgres    false    221            �           2606    52970 4   tbl_channel_entry_media tbl_channel_entry_media_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tbl_channel_entry_media
    ADD CONSTRAINT tbl_channel_entry_media_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.tbl_channel_entry_media DROP CONSTRAINT tbl_channel_entry_media_pkey;
       public            postgres    false    223            �           2606    52972    tbl_channels tbl_channels_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_channels
    ADD CONSTRAINT tbl_channels_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tbl_channels DROP CONSTRAINT tbl_channels_pkey;
       public            postgres    false    224            �           2606    52974 *   tbl_email_template tbl_email_template_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tbl_email_template
    ADD CONSTRAINT tbl_email_template_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.tbl_email_template DROP CONSTRAINT tbl_email_template_pkey;
       public            postgres    false    226            �           2606    52976 &   tbl_field_groups tbl_field_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_field_groups
    ADD CONSTRAINT tbl_field_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tbl_field_groups DROP CONSTRAINT tbl_field_groups_pkey;
       public            postgres    false    228            �           2606    52978 (   tbl_field_options tbl_field_options_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tbl_field_options
    ADD CONSTRAINT tbl_field_options_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.tbl_field_options DROP CONSTRAINT tbl_field_options_pkey;
       public            postgres    false    230            �           2606    52980 $   tbl_field_types tbl_field_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_field_types
    ADD CONSTRAINT tbl_field_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tbl_field_types DROP CONSTRAINT tbl_field_types_pkey;
       public            postgres    false    232            �           2606    52982    tbl_fields tbl_fields_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tbl_fields
    ADD CONSTRAINT tbl_fields_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tbl_fields DROP CONSTRAINT tbl_fields_pkey;
       public            postgres    false    234            �           2606    52984 &   tbl_group_fields tbl_group_fields_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_group_fields
    ADD CONSTRAINT tbl_group_fields_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tbl_group_fields DROP CONSTRAINT tbl_group_fields_pkey;
       public            postgres    false    236            �           2606    52986    tbl_language tbl_language_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_language
    ADD CONSTRAINT tbl_language_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tbl_language DROP CONSTRAINT tbl_language_pkey;
       public            postgres    false    238            �           2606    52988    tbl_media tbl_media_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_media
    ADD CONSTRAINT tbl_media_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_media DROP CONSTRAINT tbl_media_pkey;
       public            postgres    false    240            �           2606    52990 "   tbl_media_type tbl_media_type_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_media_type
    ADD CONSTRAINT tbl_media_type_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tbl_media_type DROP CONSTRAINT tbl_media_type_pkey;
       public            postgres    false    243            �           2606    52992 &   tbl_member_group tbl_member_group_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_member_group
    ADD CONSTRAINT tbl_member_group_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tbl_member_group DROP CONSTRAINT tbl_member_group_pkey;
       public            postgres    false    244            �           2606    52994 (   tbl_member_groups tbl_member_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tbl_member_groups
    ADD CONSTRAINT tbl_member_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.tbl_member_groups DROP CONSTRAINT tbl_member_groups_pkey;
       public            postgres    false    246            �           2606    52996 <   tbl_member_notes_highlights tbl_member_notes_highlights_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.tbl_member_notes_highlights
    ADD CONSTRAINT tbl_member_notes_highlights_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.tbl_member_notes_highlights DROP CONSTRAINT tbl_member_notes_highlights_pkey;
       public            postgres    false    248            �           2606    52998    tbl_members tbl_members_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_members
    ADD CONSTRAINT tbl_members_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tbl_members DROP CONSTRAINT tbl_members_pkey;
       public            postgres    false    250                       2606    53000 2   tbl_module_permissions tbl_module_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.tbl_module_permissions
    ADD CONSTRAINT tbl_module_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.tbl_module_permissions DROP CONSTRAINT tbl_module_permissions_pkey;
       public            postgres    false    252                       2606    53002    tbl_modules tbl_modules_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_modules
    ADD CONSTRAINT tbl_modules_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tbl_modules DROP CONSTRAINT tbl_modules_pkey;
       public            postgres    false    254                       2606    53004 .   tbl_page_aliases_log tbl_page_aliases_log_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_page_aliases_log
    ADD CONSTRAINT tbl_page_aliases_log_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tbl_page_aliases_log DROP CONSTRAINT tbl_page_aliases_log_pkey;
       public            postgres    false    259                       2606    53006    tbl_page_aliases tbl_page_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_page_aliases
    ADD CONSTRAINT tbl_page_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tbl_page_aliases DROP CONSTRAINT tbl_page_pkey;
       public            postgres    false    257                       2606    53008 6   tbl_pages_access_coutrol tbl_pages_access_coutrol_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.tbl_pages_access_coutrol
    ADD CONSTRAINT tbl_pages_access_coutrol_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.tbl_pages_access_coutrol DROP CONSTRAINT tbl_pages_access_coutrol_pkey;
       public            postgres    false    262                       2606    53010 >   tbl_pages_categories_aliases tbl_pages_categories_aliases_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.tbl_pages_categories_aliases
    ADD CONSTRAINT tbl_pages_categories_aliases_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.tbl_pages_categories_aliases DROP CONSTRAINT tbl_pages_categories_aliases_pkey;
       public            postgres    false    265                       2606    53012 .   tbl_pages_categories tbl_pages_categories_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_pages_categories
    ADD CONSTRAINT tbl_pages_categories_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tbl_pages_categories DROP CONSTRAINT tbl_pages_categories_pkey;
       public            postgres    false    264                       2606    53014 4   tbl_pages_group_aliases tbl_pages_group_aliases_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tbl_pages_group_aliases
    ADD CONSTRAINT tbl_pages_group_aliases_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.tbl_pages_group_aliases DROP CONSTRAINT tbl_pages_group_aliases_pkey;
       public            postgres    false    269                       2606    53016 $   tbl_pages_group tbl_pages_group_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_pages_group
    ADD CONSTRAINT tbl_pages_group_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tbl_pages_group DROP CONSTRAINT tbl_pages_group_pkey;
       public            postgres    false    268            
           2606    53018    tbl_page tbl_pages_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.tbl_page
    ADD CONSTRAINT tbl_pages_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.tbl_page DROP CONSTRAINT tbl_pages_pkey;
       public            postgres    false    256            !           2606    53020 ,   tbl_permitted_users tbl_permitted_users_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_permitted_users
    ADD CONSTRAINT tbl_permitted_users_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tbl_permitted_users DROP CONSTRAINT tbl_permitted_users_pkey;
       public            postgres    false    272            &           2606    53022 .   tbl_role_permissions tbl_role_permissions_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_role_permissions
    ADD CONSTRAINT tbl_role_permissions_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tbl_role_permissions DROP CONSTRAINT tbl_role_permissions_pkey;
       public            postgres    false    274            *           2606    53024     tbl_role_user tbl_role_user_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbl_role_user
    ADD CONSTRAINT tbl_role_user_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tbl_role_user DROP CONSTRAINT tbl_role_user_pkey;
       public            postgres    false    276            ,           2606    53026    tbl_roles tbl_roles_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_roles
    ADD CONSTRAINT tbl_roles_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_roles DROP CONSTRAINT tbl_roles_pkey;
       public            postgres    false    278            1           2606    53028 *   tbl_spaces_aliases tbl_spaces_aliases_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tbl_spaces_aliases
    ADD CONSTRAINT tbl_spaces_aliases_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.tbl_spaces_aliases DROP CONSTRAINT tbl_spaces_aliases_pkey;
       public            postgres    false    281            /           2606    53030    tbl_spaces tbl_spaces_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tbl_spaces
    ADD CONSTRAINT tbl_spaces_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tbl_spaces DROP CONSTRAINT tbl_spaces_pkey;
       public            postgres    false    280            3           2606    53032 0   tbl_user_personalizes tbl_user_personalizes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tbl_user_personalizes
    ADD CONSTRAINT tbl_user_personalizes_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.tbl_user_personalizes DROP CONSTRAINT tbl_user_personalizes_pkey;
       public            postgres    false    284            6           2606    53034    tbl_users tbl_users_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_pkey;
       public            postgres    false    286            �           1259    53035    email_unique    INDEX     \   CREATE INDEX email_unique ON public.tbl_members USING btree (email) WHERE (is_deleted = 0);
     DROP INDEX public.email_unique;
       public            postgres    false    250    250            �           1259    53036 4   fk_tbl_channel_entry_fields_tbl_channel_entries1_idx    INDEX     �   CREATE INDEX fk_tbl_channel_entry_fields_tbl_channel_entries1_idx ON public.tbl_channel_entry_fields USING btree (channel_entry_id);
 H   DROP INDEX public.fk_tbl_channel_entry_fields_tbl_channel_entries1_idx;
       public            postgres    false    221            �           1259    53037 +   fk_tbl_channel_entry_fields_tbl_fields1_idx    INDEX     t   CREATE INDEX fk_tbl_channel_entry_fields_tbl_fields1_idx ON public.tbl_channel_entry_fields USING btree (field_id);
 ?   DROP INDEX public.fk_tbl_channel_entry_fields_tbl_fields1_idx;
       public            postgres    false    221            �           1259    53038 %   fk_tbl_channels_tbl_field_groups1_idx    INDEX     h   CREATE INDEX fk_tbl_channels_tbl_field_groups1_idx ON public.tbl_channels USING btree (field_group_id);
 9   DROP INDEX public.fk_tbl_channels_tbl_field_groups1_idx;
       public            postgres    false    224            �           1259    53039 $   fk_tbl_field_options_tbl_fields1_idx    INDEX     f   CREATE INDEX fk_tbl_field_options_tbl_fields1_idx ON public.tbl_field_options USING btree (field_id);
 8   DROP INDEX public.fk_tbl_field_options_tbl_fields1_idx;
       public            postgres    false    230            �           1259    53040 "   fk_tbl_fields_tbl_field_types1_idx    INDEX     b   CREATE INDEX fk_tbl_fields_tbl_field_types1_idx ON public.tbl_fields USING btree (field_type_id);
 6   DROP INDEX public.fk_tbl_fields_tbl_field_types1_idx;
       public            postgres    false    234            �           1259    53041 )   fk_tbl_group_fields_tbl_field_groups1_idx    INDEX     l   CREATE INDEX fk_tbl_group_fields_tbl_field_groups1_idx ON public.tbl_group_fields USING btree (channel_id);
 =   DROP INDEX public.fk_tbl_group_fields_tbl_field_groups1_idx;
       public            postgres    false    236            �           1259    53042 #   fk_tbl_group_fields_tbl_fields1_idx    INDEX     d   CREATE INDEX fk_tbl_group_fields_tbl_fields1_idx ON public.tbl_group_fields USING btree (field_id);
 7   DROP INDEX public.fk_tbl_group_fields_tbl_fields1_idx;
       public            postgres    false    236            "           1259    53043    fk_tbl_group_permissions_1_idx    INDEX     b   CREATE INDEX fk_tbl_group_permissions_1_idx ON public.tbl_role_permissions USING btree (role_id);
 2   DROP INDEX public.fk_tbl_group_permissions_1_idx;
       public            postgres    false    274            #           1259    53044 '   fk_tbl_group_permissions_permission_idx    INDEX     q   CREATE INDEX fk_tbl_group_permissions_permission_idx ON public.tbl_role_permissions USING btree (permission_id);
 ;   DROP INDEX public.fk_tbl_group_permissions_permission_idx;
       public            postgres    false    274            '           1259    53045 $   fk_tbl_group_user_tbl_user_group_idx    INDEX     a   CREATE INDEX fk_tbl_group_user_tbl_user_group_idx ON public.tbl_role_user USING btree (role_id);
 8   DROP INDEX public.fk_tbl_group_user_tbl_user_group_idx;
       public            postgres    false    276            (           1259    53046     fk_tbl_group_user_tbl_users1_idx    INDEX     ]   CREATE INDEX fk_tbl_group_user_tbl_users1_idx ON public.tbl_role_user USING btree (user_id);
 4   DROP INDEX public.fk_tbl_group_user_tbl_users1_idx;
       public            postgres    false    276            �           1259    53047 $   fk_tbl_list_media_tb_media_type1_idx    INDEX     q   CREATE INDEX fk_tbl_list_media_tb_media_type1_idx ON public.tbl_channel_entry_media USING btree (media_type_id);
 8   DROP INDEX public.fk_tbl_list_media_tb_media_type1_idx;
       public            postgres    false    223            �           1259    53048 "   fk_tbl_list_media_tbl_listing1_idx    INDEX     r   CREATE INDEX fk_tbl_list_media_tbl_listing1_idx ON public.tbl_channel_entry_media USING btree (channel_entry_id);
 6   DROP INDEX public.fk_tbl_list_media_tbl_listing1_idx;
       public            postgres    false    223            �           1259    53049     fk_tbl_listing_tbl_channels1_idx    INDEX     f   CREATE INDEX fk_tbl_listing_tbl_channels1_idx ON public.tbl_channel_entries USING btree (channel_id);
 4   DROP INDEX public.fk_tbl_listing_tbl_channels1_idx;
       public            postgres    false    219            �           1259    53050    fk_tbl_listing_tbl_users1_idx    INDEX     `   CREATE INDEX fk_tbl_listing_tbl_users1_idx ON public.tbl_channel_entries USING btree (user_id);
 1   DROP INDEX public.fk_tbl_listing_tbl_users1_idx;
       public            postgres    false    219            �           1259    53051 $   fk_tbl_members_tbl_member_group1_idx    INDEX     g   CREATE INDEX fk_tbl_members_tbl_member_group1_idx ON public.tbl_members USING btree (member_group_id);
 8   DROP INDEX public.fk_tbl_members_tbl_member_group1_idx;
       public            postgres    false    250                       1259    53052    fk_tbl_permissions_1_idx    INDEX     `   CREATE INDEX fk_tbl_permissions_1_idx ON public.tbl_module_permissions USING btree (module_id);
 ,   DROP INDEX public.fk_tbl_permissions_1_idx;
       public            postgres    false    252                       1259    53053 %   fk_tbl_permitted_users_tbl_users1_idx    INDEX     h   CREATE INDEX fk_tbl_permitted_users_tbl_users1_idx ON public.tbl_permitted_users USING btree (user_id);
 9   DROP INDEX public.fk_tbl_permitted_users_tbl_users1_idx;
       public            postgres    false    272                       1259    53054 %   fk_tbl_permitted_users_tbl_users2_idx    INDEX     r   CREATE INDEX fk_tbl_permitted_users_tbl_users2_idx ON public.tbl_permitted_users USING btree (permitted_user_id);
 9   DROP INDEX public.fk_tbl_permitted_users_tbl_users2_idx;
       public            postgres    false    272            4           1259    53055    fk_tbl_users_tbl_roles1_idx    INDEX     T   CREATE INDEX fk_tbl_users_tbl_roles1_idx ON public.tbl_users USING btree (role_id);
 /   DROP INDEX public.fk_tbl_users_tbl_roles1_idx;
       public            postgres    false    286            �           1259    53056    mobile_no_unique    INDEX     d   CREATE INDEX mobile_no_unique ON public.tbl_members USING btree (mobile_no) WHERE (is_deleted = 0);
 $   DROP INDEX public.mobile_no_unique;
       public            postgres    false    250    250            �           1259    53057 5   tbl_access_control_pages_access_control_user_group_id    INDEX     �   CREATE INDEX tbl_access_control_pages_access_control_user_group_id ON public.tbl_access_control_pages USING btree (access_control_user_group_id);
 I   DROP INDEX public.tbl_access_control_pages_access_control_user_group_id;
       public            postgres    false    211            �           1259    53058 &   tbl_access_control_pages_page_group_id    INDEX     t   CREATE INDEX tbl_access_control_pages_page_group_id ON public.tbl_access_control_pages USING btree (page_group_id);
 :   DROP INDEX public.tbl_access_control_pages_page_group_id;
       public            postgres    false    211            �           1259    53059     tbl_access_control_pages_page_id    INDEX     h   CREATE INDEX tbl_access_control_pages_page_id ON public.tbl_access_control_pages USING btree (page_id);
 4   DROP INDEX public.tbl_access_control_pages_page_id;
       public            postgres    false    211            �           1259    53060 "   tbl_access_control_pages_spaces_id    INDEX     l   CREATE INDEX tbl_access_control_pages_spaces_id ON public.tbl_access_control_pages USING btree (spaces_id);
 6   DROP INDEX public.tbl_access_control_pages_spaces_id;
       public            postgres    false    211            �           1259    53061 /   tbl_access_control_user_group_access_control_id    INDEX     �   CREATE INDEX tbl_access_control_user_group_access_control_id ON public.tbl_access_control_user_group USING btree (access_control_id);
 C   DROP INDEX public.tbl_access_control_user_group_access_control_id;
       public            postgres    false    213            �           1259    53062 -   tbl_access_control_user_group_member_group_id    INDEX     �   CREATE INDEX tbl_access_control_user_group_member_group_id ON public.tbl_access_control_user_group USING btree (member_group_id);
 A   DROP INDEX public.tbl_access_control_user_group_member_group_id;
       public            postgres    false    213                       1259    53063    tbl_module_permisison_unique    INDEX     y   CREATE UNIQUE INDEX tbl_module_permisison_unique ON public.tbl_module_permissions USING btree (display_name, module_id);
 0   DROP INDEX public.tbl_module_permisison_unique;
       public            postgres    false    252    252                       1259    53064    tbl_page_aliases_language_id    INDEX     `   CREATE INDEX tbl_page_aliases_language_id ON public.tbl_page_aliases USING btree (language_id);
 0   DROP INDEX public.tbl_page_aliases_language_id;
       public            postgres    false    257                       1259    53065    tbl_page_aliases_page_id    INDEX     X   CREATE INDEX tbl_page_aliases_page_id ON public.tbl_page_aliases USING btree (page_id);
 ,   DROP INDEX public.tbl_page_aliases_page_id;
       public            postgres    false    257                       1259    53066    tbl_page_page_group_id    INDEX     T   CREATE INDEX tbl_page_page_group_id ON public.tbl_page USING btree (page_group_id);
 *   DROP INDEX public.tbl_page_page_group_id;
       public            postgres    false    256                       1259    53067    tbl_page_spaces_id    INDEX     L   CREATE INDEX tbl_page_spaces_id ON public.tbl_page USING btree (spaces_id);
 &   DROP INDEX public.tbl_page_spaces_id;
       public            postgres    false    256                       1259    53068 $   tbl_pages_access_coutrol_access_type    INDEX     p   CREATE INDEX tbl_pages_access_coutrol_access_type ON public.tbl_pages_access_coutrol USING btree (access_type);
 8   DROP INDEX public.tbl_pages_access_coutrol_access_type;
       public            postgres    false    262                       1259    53069 (   tbl_pages_access_coutrol_member_group_id    INDEX     p   CREATE INDEX tbl_pages_access_coutrol_member_group_id ON public.tbl_pages_access_coutrol USING btree (page_id);
 <   DROP INDEX public.tbl_pages_access_coutrol_member_group_id;
       public            postgres    false    262                       1259    53070    tbl_pages_group_spaces_id    INDEX     Z   CREATE INDEX tbl_pages_group_spaces_id ON public.tbl_pages_group USING btree (spaces_id);
 -   DROP INDEX public.tbl_pages_group_spaces_id;
       public            postgres    false    268            $           1259    53071    tbl_role_permisison_unique    INDEX     t   CREATE UNIQUE INDEX tbl_role_permisison_unique ON public.tbl_role_permissions USING btree (role_id, permission_id);
 .   DROP INDEX public.tbl_role_permisison_unique;
       public            postgres    false    274    274            -           1259    53072    tbl_spaces_page_category_id    INDEX     ^   CREATE INDEX tbl_spaces_page_category_id ON public.tbl_spaces USING btree (page_category_id);
 /   DROP INDEX public.tbl_spaces_page_category_id;
       public            postgres    false    280                        1259    53073    username_mem_unique    INDEX     V   CREATE UNIQUE INDEX username_mem_unique ON public.tbl_members USING btree (username);
 '   DROP INDEX public.username_mem_unique;
       public            postgres    false    250            7           1259    53074    username_unique    INDEX     `   CREATE INDEX username_unique ON public.tbl_users USING btree (username) WHERE (is_deleted = 0);
 #   DROP INDEX public.username_unique;
       public            postgres    false    286    286            :           2606    53075 I   tbl_channel_entry_fields fk_tbl_channel_entry_fields_tbl_channel_entries1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_channel_entry_fields
    ADD CONSTRAINT fk_tbl_channel_entry_fields_tbl_channel_entries1 FOREIGN KEY (channel_entry_id) REFERENCES public.tbl_channel_entries(id);
 s   ALTER TABLE ONLY public.tbl_channel_entry_fields DROP CONSTRAINT fk_tbl_channel_entry_fields_tbl_channel_entries1;
       public          postgres    false    219    3539    221            ;           2606    53080 @   tbl_channel_entry_fields fk_tbl_channel_entry_fields_tbl_fields1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_channel_entry_fields
    ADD CONSTRAINT fk_tbl_channel_entry_fields_tbl_fields1 FOREIGN KEY (field_id) REFERENCES public.tbl_fields(id);
 j   ALTER TABLE ONLY public.tbl_channel_entry_fields DROP CONSTRAINT fk_tbl_channel_entry_fields_tbl_fields1;
       public          postgres    false    234    3562    221            >           2606    53085 2   tbl_field_options fk_tbl_field_options_tbl_fields1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_field_options
    ADD CONSTRAINT fk_tbl_field_options_tbl_fields1 FOREIGN KEY (field_id) REFERENCES public.tbl_fields(id);
 \   ALTER TABLE ONLY public.tbl_field_options DROP CONSTRAINT fk_tbl_field_options_tbl_fields1;
       public          postgres    false    230    234    3562            ?           2606    53090 )   tbl_fields fk_tbl_fields_tbl_field_types1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_fields
    ADD CONSTRAINT fk_tbl_fields_tbl_field_types1 FOREIGN KEY (field_type_id) REFERENCES public.tbl_field_types(id);
 S   ALTER TABLE ONLY public.tbl_fields DROP CONSTRAINT fk_tbl_fields_tbl_field_types1;
       public          postgres    false    3559    234    232            @           2606    53095 0   tbl_group_fields fk_tbl_group_fields_tbl_fields1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_group_fields
    ADD CONSTRAINT fk_tbl_group_fields_tbl_fields1 FOREIGN KEY (field_id) REFERENCES public.tbl_fields(id);
 Z   ALTER TABLE ONLY public.tbl_group_fields DROP CONSTRAINT fk_tbl_group_fields_tbl_fields1;
       public          postgres    false    236    234    3562            H           2606    53100 3   tbl_role_permissions fk_tbl_group_permissions_group    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_role_permissions
    ADD CONSTRAINT fk_tbl_group_permissions_group FOREIGN KEY (role_id) REFERENCES public.tbl_roles(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ]   ALTER TABLE ONLY public.tbl_role_permissions DROP CONSTRAINT fk_tbl_group_permissions_group;
       public          postgres    false    3628    278    274            I           2606    53105 8   tbl_role_permissions fk_tbl_group_permissions_permission    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_role_permissions
    ADD CONSTRAINT fk_tbl_group_permissions_permission FOREIGN KEY (permission_id) REFERENCES public.tbl_module_permissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 b   ALTER TABLE ONLY public.tbl_role_permissions DROP CONSTRAINT fk_tbl_group_permissions_permission;
       public          postgres    false    3588    252    274            K           2606    53110 .   tbl_role_user fk_tbl_group_user_tbl_user_group    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_role_user
    ADD CONSTRAINT fk_tbl_group_user_tbl_user_group FOREIGN KEY (role_id) REFERENCES public.tbl_roles(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.tbl_role_user DROP CONSTRAINT fk_tbl_group_user_tbl_user_group;
       public          postgres    false    278    3628    276            L           2606    53115 *   tbl_role_user fk_tbl_group_user_tbl_users1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_role_user
    ADD CONSTRAINT fk_tbl_group_user_tbl_users1 FOREIGN KEY (user_id) REFERENCES public.tbl_users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public.tbl_role_user DROP CONSTRAINT fk_tbl_group_user_tbl_users1;
       public          postgres    false    286    3638    276            <           2606    53120 8   tbl_channel_entry_media fk_tbl_list_media_tb_media_type1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_channel_entry_media
    ADD CONSTRAINT fk_tbl_list_media_tb_media_type1 FOREIGN KEY (media_type_id) REFERENCES public.tbl_media_type(id);
 b   ALTER TABLE ONLY public.tbl_channel_entry_media DROP CONSTRAINT fk_tbl_list_media_tb_media_type1;
       public          postgres    false    243    223    3572            =           2606    53125 6   tbl_channel_entry_media fk_tbl_list_media_tbl_listing1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_channel_entry_media
    ADD CONSTRAINT fk_tbl_list_media_tbl_listing1 FOREIGN KEY (channel_entry_id) REFERENCES public.tbl_channel_entries(id);
 `   ALTER TABLE ONLY public.tbl_channel_entry_media DROP CONSTRAINT fk_tbl_list_media_tbl_listing1;
       public          postgres    false    219    3539    223            9           2606    53130 0   tbl_channel_entries fk_tbl_listing_tbl_channels1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_channel_entries
    ADD CONSTRAINT fk_tbl_listing_tbl_channels1 FOREIGN KEY (channel_id) REFERENCES public.tbl_channels(id);
 Z   ALTER TABLE ONLY public.tbl_channel_entries DROP CONSTRAINT fk_tbl_listing_tbl_channels1;
       public          postgres    false    224    219    3550            C           2606    53135 ,   tbl_members fk_tbl_members_tbl_member_group1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_members
    ADD CONSTRAINT fk_tbl_members_tbl_member_group1 FOREIGN KEY (member_group_id) REFERENCES public.tbl_member_group(id);
 V   ALTER TABLE ONLY public.tbl_members DROP CONSTRAINT fk_tbl_members_tbl_member_group1;
       public          postgres    false    244    3574    250            J           2606    53140 B   tbl_role_permissions fk_tbl_module_permissions_tbl_role_permission    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_role_permissions
    ADD CONSTRAINT fk_tbl_module_permissions_tbl_role_permission FOREIGN KEY (permission_id) REFERENCES public.tbl_module_permissions(id);
 l   ALTER TABLE ONLY public.tbl_role_permissions DROP CONSTRAINT fk_tbl_module_permissions_tbl_role_permission;
       public          postgres    false    252    274    3588            D           2606    53145 ;   tbl_module_permissions fk_tbl_modules_tbl_module_permission    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_module_permissions
    ADD CONSTRAINT fk_tbl_modules_tbl_module_permission FOREIGN KEY (module_id) REFERENCES public.tbl_modules(id);
 e   ALTER TABLE ONLY public.tbl_module_permissions DROP CONSTRAINT fk_tbl_modules_tbl_module_permission;
       public          postgres    false    3590    252    254            E           2606    53150 +   tbl_module_permissions fk_tbl_permissions_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_module_permissions
    ADD CONSTRAINT fk_tbl_permissions_1 FOREIGN KEY (module_id) REFERENCES public.tbl_modules(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public.tbl_module_permissions DROP CONSTRAINT fk_tbl_permissions_1;
       public          postgres    false    254    3590    252            F           2606    53155 5   tbl_permitted_users fk_tbl_permitted_users_tbl_users1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_permitted_users
    ADD CONSTRAINT fk_tbl_permitted_users_tbl_users1 FOREIGN KEY (user_id) REFERENCES public.tbl_users(id);
 _   ALTER TABLE ONLY public.tbl_permitted_users DROP CONSTRAINT fk_tbl_permitted_users_tbl_users1;
       public          postgres    false    286    3638    272            G           2606    53160 5   tbl_permitted_users fk_tbl_permitted_users_tbl_users2    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_permitted_users
    ADD CONSTRAINT fk_tbl_permitted_users_tbl_users2 FOREIGN KEY (permitted_user_id) REFERENCES public.tbl_users(id);
 _   ALTER TABLE ONLY public.tbl_permitted_users DROP CONSTRAINT fk_tbl_permitted_users_tbl_users2;
       public          postgres    false    286    272    3638            N           2606    53165 !   tbl_users fk_tbl_users_tbl_roles1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT fk_tbl_users_tbl_roles1 FOREIGN KEY (role_id) REFERENCES public.tbl_roles(id);
 K   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT fk_tbl_users_tbl_roles1;
       public          postgres    false    286    3628    278            8           2606    53170 4   tbl_channel_category tbl_channel_category_channel_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_channel_category
    ADD CONSTRAINT tbl_channel_category_channel_id FOREIGN KEY (channel_id) REFERENCES public.tbl_channels(id);
 ^   ALTER TABLE ONLY public.tbl_channel_category DROP CONSTRAINT tbl_channel_category_channel_id;
       public          postgres    false    3550    224    217            A           2606    53175 1   tbl_group_fields tbl_group_fields_channel_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_group_fields
    ADD CONSTRAINT tbl_group_fields_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES public.tbl_channels(id) NOT VALID;
 [   ALTER TABLE ONLY public.tbl_group_fields DROP CONSTRAINT tbl_group_fields_channel_id_fkey;
       public          postgres    false    3550    224    236            B           2606    53180 #   tbl_media tbl_media_media_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_media
    ADD CONSTRAINT tbl_media_media_type_fkey FOREIGN KEY (media_type) REFERENCES public.tbl_media_type(id) NOT VALID;
 M   ALTER TABLE ONLY public.tbl_media DROP CONSTRAINT tbl_media_media_type_fkey;
       public          postgres    false    3572    240    243            M           2606    53185 6   tbl_user_personalizes tbl_user_personalizes_useid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_user_personalizes
    ADD CONSTRAINT tbl_user_personalizes_useid_fkey FOREIGN KEY (user_id) REFERENCES public.tbl_users(id);
 `   ALTER TABLE ONLY public.tbl_user_personalizes DROP CONSTRAINT tbl_user_personalizes_useid_fkey;
       public          postgres    false    284    286    3638            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   U  x��\�RI}Ư��T	2��4UY���2��JmU^��z홞�nPֲ*��o�~���/��=�8����m!�4��{o�{�a�F逋6W1�򌋠�}��H���+�QzU���B�}8.�(��k���vT���3�[�qШ�!���lo³:<4�0�&W����6]}I�h�~:��m����i[�nT|θ���>��5�y�QG��n�O���4V^���e�Uy`Q@e�p�C4b4"�&��)̶C�6���-_�B�6�,#��n����w�����Z|3��<��T�8�uS:�5^L��jڣ�鸷�S�x�*-R�����(�yIɊ$��f������	�9t�,m�j���`�c��`D)����o�_�c���
f�y���j"Zw��bѦQ�N5�*oY���G�Y�ski���϶,����-���
�>�\��i�s��>]���l��ĉ���p�I�=�gG�� @	�H�><��K�"R^hP�kP ��`a �q�����A�쟡����=F�S�:���&a���QT',Fnf1�G]�.˅���=x�����, >XQ~��B�v�ާCS�Xu.=F>����Yq�?za� /��[z� jm��` |�#L�WQ����\�*	1eռ�?A���4A�$�[	��V_�oͫ���Ϥ�E W�*ǜ�1+V"o�z��i46���"�3�]��5�
]V�4�����|м��׷�[��K��{�i�бD��7z$h��������jL��������g���+(��W�I�ӣ�q]_�U� |��%�.�����9A2��� ��&��Q���P��V���ڂ%>���%2�Z�����9�p0чK_?�[ۨԜ�[G���6�u'=W+9+ni���6�h�?�2��ɰ w}�H��2�]-߶|��m˷��GL�'O4K�;PH�G-*B x�rw��I"$���O!Pr3>c�&�[�xZ$J�����!>M	_���I?�Lt�q̡Q�a�+���Zfh��e��.ٲ�И<f����z�qᮩ����!j����م�Z�o�~!��!�-� ��/b�H7Xz��_XZhi����K�����>��>��>w����E�+��`
��`��(�0O��~%� �6_D��(L����g���n�̊ ��������
j�f�i -7a1p�N��(�����3G�n�{^t��W���v"�̵=7W�j����$�|?�u$8҉��B]	%kT��r���h�@+.��f�@c�=���+B܊�	5٫�=���췞�~!	�����������k�o/�n�V|>Y	�J��ҡO/~!߿�#j3l~��=�6!,F	C���
o(��YM�j�K�����N���_*e���~vai�f%�i"gw�=%�C��U�Q�em�}��$��" ��G%�$�1ӿ(�Ō���+i/���X��j�V3�����fh5�L3��>��M"������|:9�oLϑH�������~~y0�*���\9A�sf73h�n G���tL8���=���1�&X����o�$u�
r.���ӧ(t|�]�͆,Fΰ��U�U�<]p�U'�`��b<�$~\�8a1#WX�҄����}�x��F��~Ba�f?b~	���h%J�J*=t'/�x�6ݢEhZ���j�;L��C늭����R�ԕ@�#֯.���J~��`d*6k�Σ�G�A���?*�>'�`z;Ą~~>��<�>{
��ω�������S�<�A��o�DӋYL$���q������y�=HO���-�Խ�מ�1DۿVWVV��5�	      �      x������ � �      �      x������ � �      �   �   x�����0�g�)2��┿�Q`C�Ȓ���Z�T��㓸b6Rb��;}����:�6~g]>���qc�:����\����h����B�����3����A����r�PG5�kl�)�ޕ�Z�Y��]K�%��K�'�e���Nu�8u���dM�~�RM�x��C��'�)��Л���C�Q���G3e<F�cV2h��,˲/�;��      �      x������ � �      �      x������ � �      �   �  x����n�0���S�h����dރ ���S �eZ�+SI���w�&�j��Bp��fG��ISLk��=8S<}}��ܪ�ռ���j[����l,l�ϱ����T����(�˷�eMb&������X�_`6�PP+�W��?�5���j���$sqI��:|����@8m"q�b\hV.���O2��^1�9h!�\�G.Ɠֆ{��v{��[׿��\�"^�iӹ�I�&ۜ�!�7K��q��]��;=���k��8�!ص��l֨FR����G
j`ϛ�(�C�:X�C��L�[.�7��O����zI�G���Ԣ�[���Ɲ�$Bf����	��K.��]����z&�W;��2e.�e����cX���H1)���cN���Km�ȃo;dcIq��k
wiy�6�@9r �/�.gE�����E������j�|���iT3�K�e��� �      �      x������ � �      �   $   x�3�t��I�L\F�n�9)�E�i`�+F��� ��	<      �   �  x�]R�n� }����l���i{��{�����uS�^���IK�,�9>�4ft���x�|��Ր!�^�%�r�:~��-(���ġ�r�{@G��q�Ld�y9N�;������=z�W*H���3��0��q����*�Tp�W�l6�lP�Ƀ\z�X��SrH��E0Ɍ[~��ғo�aǱ���zI�"��tv�x.>��j3G/QoB<�f�s����ۢy��������������DO�a��@Xh�t
?�N*H������ɝާ��d.�M�§T>�%��=�VL����[��Ο��"i_�u�4�J��tD~ĥ{]5A�����5�Nrb@��c�ҵ���e�W���4�����:�N�ꉀ���%�ܱo+k�@�F      �   ]   x�3�tIMK,�)Qp/�/-�L�������䊲���2NCNN##c]CC]#SC+#3+cmS �i�3�5 ʙ(X�YZ��b���� 2�            x������ � �            x������ � �           x��WKs�6>S�����X�Ò}�zs�3�M�{�-ю�z�('���|Ȕ����c� ~��zCV�ũ�
!W�6��y�A^Ԕ�~$,"�~����(c[�e�����P�m�K���Z�fw���Y�dJ�"��Du�<u͹5�����/3�X�a
p_y]�R��c�(��ΌA>�e7���<WK��E}����}|�$#��+o�x�X\Um��R�):�5�a1��x2z��b6xb%��(ٯ�.�c�e��$@�ѝ�	e�6
��� �	|��������`��-�� =Z�Kb"[���"��W	�v��k^�eU��t�'q!X�}L��9͋�Qt ����I�MG�WA���Ҿ�YS�s%�G��VV�6G�vB��`�߾��,zqOIp=AT}��5ڲ0�� ���6cx�ixw?�of��G��VڒE�ѷ}�����&<V�t��i,Y��Y�^�]��ǅ�1ߟ��N1�Xn��')�}���4���u�*�腞��jbX��`��%"ڂǢp.�6	�������qf��'[�߲�4�\%o�p��ou`�8B����R�Y�����L�;�G^F[K&<��IܩI|m�N6��EL�,�%Q3p�aЮ�Q1#?�����!o��Ԇ�ܖϋ
]�Ʒ��;���b?@ZnCA�'�g�Rӓh���M�����';����T�E�/P&d�ǦT��]�w`�k�����݆��K���Z�>9�U��#x��z��vZ�j�F
�(0��Xʲy9=|8��fH�J����v�bb͂�Yw��{\?��B���1Ah^�F��y.χ�n�:Qk���wVj۲`�&��ƥ1[��J��`��҂p�L'��m.�KV�ңu�6�p�-�\r�}��&T�$S�X��%H]���|��ix�!�E�	�TKt���,����v:륵/�O�^;Y�����>jj;�)*^@�N�2�j�KK���=/���X����w� ��F�:�A����LԼ+		.IHӶ�^��0����͗���="�x��"+�E�/�$ߊ��Lyݳc�0�}X�p)��/@ �����p��q8�Z�*�v�շ"�8���i ƙ�R�@��R�+=p	�j�\�Kۅ��忺cu�c:�L����'tR�')��X���.���R���k�S��-�n��=��t�+�Y��&�0�T��)p`�z���[	�Us�cȂ!�\���0R�Zz��Kg�̟/ ҷ7��D'F����[=u������U6'4:��:�dj�������b�:         
  x�͖Ko�6����ٌIv^�Ҵ]�E1ɦ�lh�Z&B�I����R�8��[�
ðl��~<<���{ieI��xY��e�Y�y�9{��,�+g�m�֪�VM}�?��{��]͞��!M%Jk��Z�i-ZY�ʄN�#}�
2�s$$f6-i�L-���֑'SҜ-y�����癲L19�����W�X:��Z#�D�I�E8���|yi;���E<V�2sV��,�vm��. �Ƙ�����[Q�F��i���H"6�E?��Fi� s��*nBV���~�������6q$l��G�[*�F��v�k��-8�@!`�%V�CHo�-�o����k�7h76��TX�j~�
H�Vy�g���M��~Ǟp��u�E��r
L����N��ф7�!Je]-��F�R��F
c���0�}�[QA�U��>�fm`�Jh��o�,���R�,��c��55[�~�@�!�]�O�"�y�.�ɏ��T��Mۙ�{~Ϟ!�e�Q�t{!�I`��ӵU�5���&?�C�&a�t5�R���wH+8Uo!6�*^�[�gc��_�!��.Np����wtߑ�� ��|0L���ճV�0�`q���!��W��+���}�����+���T�rNt��3p�A��j僰�ӕ f��|yT4�"h�+���
�/�a�2\,�c�3��b^�"�/��wZ!��V��E�^Qg�9Y(`���R�_�	Vj�!�4L]>���@�yQ�/��I�I�Qh�֜�?M����)�������{ƾK�H���l�Ҥ�o1��
��4�Y��F*-^�i5R]L1�L ZI�,��d]PH���&��F��T�Ώ��K2ѿ@,2^,����]�L/��C�)_3�5�xv,�q~|�ߛ�Re�S���0�O�)8���}�Ke1�Ei?��=��Дgѳ�[�I�6��@�u�+�v&|��P�&�p`��v�[[�w�i�ҍ�vR�nsˋ;{zk�F�_@վG%��>揂D�Q"t��C�4�nxq�V��o��}�L�Â? YR���Հӗ��s�q]�      	      x������ � �      
      x������ � �            x������ � �            x������ � �         ;   x�3�4202�50�54R0��2��22�4��!a�eD�2C.c�L3!F�1W� ,.�         �   x�3�4B����<�����Ң�T�7��M,NI�4202�50�54R0��2��22j��!a�e�i��+I-*�L-�̄�*��ˈ1Ð˘$蘜�_�WR̙g�
N��KbfN��OjJzjg
��� MJ'�(c�=... ��H�            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x�%�A
�0����s����Rͮ��	�b �!�Pz{[�~��<j���'�p���Q���dK���+(o�S�ݱ
E���̘��g(���� n��4�Hg{�Xcv�k���ZK�%���F)���&7      !      x������ � �      "      x������ � �      %      x������ � �      '   �   x�E�=�0E��+X����NʠB�, ���5`������n�I�e��8��؎�D��Զ����m���ڣ�c�6�
<��5��s��P�]R�m���2��x��˲M��k_D�b�̄9d>�>
��)'`)�}�]�5�����\P-X DR�yH�*p�]2�     