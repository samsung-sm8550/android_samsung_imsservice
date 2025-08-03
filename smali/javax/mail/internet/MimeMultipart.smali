.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# static fields
.field private static bmparse:Z = true

.field private static ignoreMissingBoundaryParameter:Z = true

.field private static ignoreMissingEndBoundary:Z = true


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 109
    :try_start_0
    const-string v0, "mail.mime.multipart.ignoremissingendboundary"

    .line 108
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    const-string v3, "false"

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 111
    :goto_0
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 114
    const-string v0, "mail.mime.multipart.ignoremissingboundaryparameter"

    .line 113
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 116
    :goto_1
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 119
    const-string v0, "mail.mime.multipart.bmparse"

    .line 118
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->bmparse:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 161
    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 173
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v2, Ljavax/mail/internet/ContentType;

    const-string v3, "multipart"

    invoke-direct {v2, v3, p1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 179
    const-string p1, "boundary"

    invoke-virtual {v2, p1, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 2

    .line 202
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 204
    instance-of v0, p1, Ljavax/mail/MessageAware;

    if-eqz v0, :cond_0

    .line 205
    move-object v0, p1

    check-cast v0, Ljavax/mail/MessageAware;

    invoke-interface {v0}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    :cond_0
    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 218
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 219
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized parsebm()V
    .locals 31

    move-object/from16 v1, p0

    monitor-enter p0

    .line 718
    :try_start_0
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 719
    monitor-exit p0

    return-void

    .line 726
    :cond_0
    :try_start_1
    iget-object v0, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 727
    instance-of v2, v0, Ljava/io/ByteArrayInputStream;

    if-nez v2, :cond_1

    .line 728
    instance-of v2, v0, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_1

    .line 729
    instance-of v2, v0, Ljavax/mail/internet/SharedInputStream;

    if-nez v2, :cond_1

    .line 730
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_26

    :catch_0
    move-exception v0

    goto/16 :goto_25

    :cond_1
    move-object v2, v0

    .line 734
    :goto_0
    :try_start_2
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_2

    .line 735
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 737
    :goto_1
    new-instance v4, Ljavax/mail/internet/ContentType;

    iget-object v5, v1, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 739
    const-string v5, "boundary"

    invoke-virtual {v4, v5}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 741
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 742
    :cond_3
    sget-boolean v4, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_34

    const/4 v4, 0x0

    .line 747
    :goto_2
    :try_start_3
    new-instance v5, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v5, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 751
    :goto_3
    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v8, :cond_4

    goto :goto_6

    .line 759
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v13

    :goto_4
    if-gez v14, :cond_5

    goto :goto_5

    .line 760
    :cond_5
    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v10, :cond_33

    if-eq v15, v9, :cond_33

    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 764
    invoke-virtual {v8, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_7

    .line 766
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v26, v5

    goto/16 :goto_20

    :catchall_1
    move-exception v0

    goto/16 :goto_24

    :catch_1
    move-exception v0

    goto/16 :goto_23

    .line 774
    :cond_7
    const-string v14, "--"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v4, v8

    :goto_6
    if-eqz v8, :cond_2f

    if-eqz v6, :cond_8

    .line 802
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 805
    :cond_8
    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 806
    array-length v6, v4

    const/16 v7, 0x100

    .line 813
    new-array v7, v7, [I

    move v8, v12

    :goto_7
    if-lt v8, v6, :cond_2e

    .line 818
    new-array v8, v6, [I

    move v14, v6

    :goto_8
    if-gtz v14, :cond_2a

    add-int/lit8 v14, v6, -0x1

    .line 836
    aput v13, v8, v14

    const-wide/16 v15, 0x0

    move/from16 v19, v12

    move-wide/from16 v17, v15

    :goto_9
    if-eqz v19, :cond_9

    goto :goto_a

    :cond_9
    if-eqz v0, :cond_e

    .line 847
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v15

    .line 849
    :cond_a
    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    if-gtz v21, :cond_a

    :cond_b
    if-nez v20, :cond_d

    .line 852
    sget-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v0, :cond_c

    .line 856
    iput-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1027
    :goto_a
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1033
    :catch_2
    :try_start_5
    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1034
    monitor-exit p0

    return-void

    .line 853
    :cond_c
    :try_start_6
    new-instance v0, Ljavax/mail/MessagingException;

    .line 854
    const-string v3, "missing multipart end boundary"

    .line 853
    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-wide/from16 v22, v15

    const/4 v15, 0x0

    goto :goto_b

    .line 861
    :cond_e
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v20

    move-wide/from16 v22, v15

    move-object/from16 v15, v20

    .line 864
    :goto_b
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v16

    if-eqz v16, :cond_29

    if-nez v0, :cond_f

    .line 870
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v3, v16

    goto :goto_c

    .line 872
    :cond_f
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17

    const/4 v3, 0x0

    .line 884
    :goto_c
    new-array v9, v6, [B

    .line 885
    new-array v10, v6, [B

    move/from16 v24, v13

    move v13, v12

    :goto_d
    add-int/lit16 v11, v6, 0x3ec

    .line 895
    invoke-virtual {v2, v11}, Ljava/io/InputStream;->mark(I)V

    .line 897
    invoke-static {v2, v9, v12, v6}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v11

    if-ge v11, v6, :cond_13

    .line 900
    sget-boolean v19, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v19, :cond_12

    if-eqz v0, :cond_10

    .line 904
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17

    .line 905
    :cond_10
    iput-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move-object/from16 v26, v5

    move-object/from16 v28, v8

    move/from16 v29, v12

    const/16 v19, 0x1

    move-object v12, v7

    :cond_11
    :goto_e
    move-wide/from16 v7, v17

    goto/16 :goto_16

    .line 901
    :cond_12
    new-instance v0, Ljavax/mail/MessagingException;

    .line 902
    const-string v3, "missing multipart end boundary"

    .line 901
    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move/from16 v25, v14

    :goto_f
    if-gez v25, :cond_14

    move-object/from16 v26, v5

    goto :goto_10

    .line 912
    :cond_14
    aget-byte v12, v9, v25

    move-object/from16 v26, v5

    aget-byte v5, v4, v25

    if-eq v12, v5, :cond_28

    :goto_10
    if-gez v25, :cond_23

    const/16 v5, 0xd

    if-nez v24, :cond_17

    add-int/lit8 v25, v13, -0x1

    .line 920
    aget-byte v12, v10, v25

    if-eq v12, v5, :cond_15

    const/16 v5, 0xa

    if-ne v12, v5, :cond_17

    goto :goto_11

    :cond_15
    const/16 v5, 0xa

    :goto_11
    if-ne v12, v5, :cond_16

    const/4 v5, 0x2

    if-lt v13, v5, :cond_16

    add-int/lit8 v5, v13, -0x2

    .line 924
    aget-byte v5, v10, v5

    const/16 v12, 0xd

    if-ne v5, v12, :cond_16

    const/4 v5, 0x2

    goto :goto_12

    :cond_16
    const/4 v5, 0x1

    goto :goto_12

    :cond_17
    const/4 v5, 0x0

    :goto_12
    if-nez v24, :cond_19

    if-lez v5, :cond_18

    goto :goto_13

    :cond_18
    move-object/from16 v27, v4

    move-object v12, v7

    move-object/from16 v28, v8

    goto/16 :goto_19

    :cond_19
    :goto_13
    if-eqz v0, :cond_1a

    .line 934
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17

    move-object v12, v7

    move-object/from16 v28, v8

    int-to-long v7, v6

    sub-long v17, v17, v7

    int-to-long v7, v5

    sub-long v17, v17, v7

    goto :goto_14

    :cond_1a
    move-object v12, v7

    move-object/from16 v28, v8

    .line 937
    :goto_14
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1b

    move/from16 v29, v5

    .line 939
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ne v5, v8, :cond_1c

    const/4 v5, 0x1

    .line 940
    iput-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move-wide/from16 v7, v17

    const/16 v19, 0x1

    goto :goto_16

    :cond_1b
    move/from16 v29, v5

    :cond_1c
    :goto_15
    const/16 v5, 0x20

    if-eq v7, v5, :cond_22

    const/16 v8, 0x9

    if-eq v7, v8, :cond_22

    const/16 v5, 0xa

    if-ne v7, v5, :cond_1d

    goto/16 :goto_e

    :cond_1d
    const/16 v8, 0xd

    if-ne v7, v8, :cond_21

    const/4 v7, 0x1

    .line 952
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->mark(I)V

    .line 953
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v7, v5, :cond_11

    .line 954
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_e

    :goto_16
    if-eqz v0, :cond_1e

    move-object/from16 v27, v4

    move-wide/from16 v4, v22

    .line 1010
    invoke-interface {v0, v4, v5, v7, v8}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v3

    move-wide/from16 v22, v4

    goto :goto_18

    :cond_1e
    move-object/from16 v27, v4

    move-wide/from16 v4, v22

    sub-int v13, v13, v29

    if-lez v13, :cond_1f

    move-wide/from16 v22, v4

    const/4 v4, 0x0

    .line 1014
    invoke-virtual {v3, v10, v4, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_17

    :cond_1f
    move-wide/from16 v22, v4

    .line 1017
    :goto_17
    iget-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v4, :cond_20

    if-lez v11, :cond_20

    const/4 v4, 0x0

    .line 1018
    invoke-virtual {v3, v9, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1019
    :cond_20
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v3

    .line 1021
    :goto_18
    invoke-super {v1, v3}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move-wide/from16 v17, v7

    move-object v7, v12

    move-wide/from16 v15, v22

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    move-object/from16 v8, v28

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_9

    :cond_21
    move-object/from16 v27, v4

    :goto_19
    const/16 v25, 0x0

    goto :goto_1a

    :cond_22
    move-object/from16 v27, v4

    const/16 v4, 0xa

    const/16 v8, 0xd

    .line 947
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v7

    move-object/from16 v4, v27

    goto :goto_15

    :cond_23
    move-object/from16 v27, v4

    move-object v12, v7

    move-object/from16 v28, v8

    :goto_1a
    add-int/lit8 v4, v25, 0x1

    .line 968
    aget-byte v5, v9, v25

    and-int/lit8 v5, v5, 0x7f

    aget v5, v12, v5

    sub-int/2addr v4, v5

    aget v5, v28, v25

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_26

    if-nez v0, :cond_24

    const/4 v4, 0x1

    if-le v13, v4, :cond_24

    add-int/lit8 v4, v13, -0x1

    const/4 v5, 0x0

    .line 975
    invoke-virtual {v3, v10, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 976
    :cond_24
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    const-wide/16 v4, 0x1

    .line 977
    invoke-direct {v1, v2, v4, v5}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    const/4 v5, 0x1

    if-lt v13, v5, :cond_25

    add-int/lit8 v13, v13, -0x1

    .line 980
    aget-byte v4, v10, v13

    const/4 v7, 0x0

    aput-byte v4, v10, v7

    .line 981
    aget-byte v4, v9, v7

    aput-byte v4, v10, v5

    const/4 v13, 0x2

    goto :goto_1c

    :cond_25
    const/4 v4, 0x0

    .line 985
    aget-byte v7, v9, v4

    aput-byte v7, v10, v4

    move v13, v5

    goto :goto_1c

    :cond_26
    const/4 v5, 0x1

    if-lez v13, :cond_27

    if-nez v0, :cond_27

    const/4 v7, 0x0

    .line 992
    invoke-virtual {v3, v10, v7, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    :cond_27
    const/4 v7, 0x0

    .line 995
    :goto_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    int-to-long v7, v4

    .line 996
    invoke-direct {v1, v2, v7, v8}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    move v13, v4

    move-object/from16 v30, v10

    move-object v10, v9

    move-object/from16 v9, v30

    :goto_1c
    move-object v7, v12

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    move-object/from16 v8, v28

    const/4 v12, 0x0

    const/16 v24, 0x0

    goto/16 :goto_d

    :cond_28
    move-object/from16 v27, v4

    move-object v12, v7

    move-object/from16 v28, v8

    const/4 v5, 0x1

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v5, v26

    const/4 v12, 0x0

    goto/16 :goto_f

    .line 865
    :cond_29
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "Stream doesn\'t support mark"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-object v12, v7

    move-object/from16 v28, v8

    move v5, v13

    add-int/lit8 v3, v6, -0x1

    :goto_1d
    if-ge v3, v14, :cond_2c

    :goto_1e
    if-gtz v3, :cond_2b

    goto :goto_1f

    :cond_2b
    add-int/lit8 v3, v3, -0x1

    .line 834
    aput v14, v28, v3

    goto :goto_1e

    .line 824
    :cond_2c
    aget-byte v4, v27, v3

    sub-int v7, v3, v14

    aget-byte v7, v27, v7

    if-ne v4, v7, :cond_2d

    add-int/lit8 v4, v3, -0x1

    .line 826
    aput v14, v28, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    :cond_2d
    :goto_1f
    add-int/lit8 v14, v14, -0x1

    move v13, v5

    move-object v7, v12

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    move-object/from16 v8, v28

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_2e
    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-object v12, v7

    move v3, v9

    move v5, v13

    .line 815
    aget-byte v4, v27, v8

    add-int/lit8 v8, v8, 0x1

    aput v8, v12, v4

    move v9, v3

    move v13, v5

    move-object v7, v12

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    const/16 v10, 0x20

    const/4 v12, 0x0

    goto/16 :goto_7

    .line 799
    :cond_2f
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "Missing start boundary"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :goto_20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-lez v3, :cond_32

    if-nez v7, :cond_30

    .line 787
    :try_start_7
    const-string v3, "line.separator"

    const-string v5, "\n"

    invoke-static {v3, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_21
    move-object v7, v3

    goto :goto_22

    .line 789
    :catch_3
    :try_start_8
    const-string v3, "\n"

    goto :goto_21

    :cond_30
    :goto_22
    if-nez v6, :cond_31

    .line 794
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x2

    add-int/2addr v5, v9

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v6, v3

    .line 795
    :cond_31
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_32
    move-object/from16 v5, v26

    goto/16 :goto_3

    :cond_33
    move-object/from16 v26, v5

    move v3, v9

    move v10, v12

    move v5, v13

    const/4 v9, 0x2

    add-int/lit8 v14, v14, -0x1

    move v9, v3

    move v13, v5

    move v12, v10

    move-object/from16 v5, v26

    const/16 v10, 0x20

    goto/16 :goto_4

    .line 1024
    :goto_23
    :try_start_9
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "IO Error"

    invoke-direct {v3, v4, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1027
    :goto_24
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1031
    :catch_4
    :try_start_b
    throw v0

    .line 743
    :cond_34
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v2, "Missing boundary parameter"

    invoke-direct {v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :goto_25
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No inputstream from datasource"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_26
    monitor-exit p0

    throw v0
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .locals 2

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-gtz p3, :cond_1

    goto :goto_1

    .line 1056
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_3

    :goto_1
    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    return v0

    :cond_3
    add-int/2addr p2, v1

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .locals 4

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-gtz p0, :cond_0

    return-void

    .line 1072
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-lez p0, :cond_1

    sub-long/2addr p2, v2

    goto :goto_0

    .line 1074
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "can\'t skip"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 0

    monitor-enter p0

    .line 325
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 326
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 0

    .line 1092
    new-instance p0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 0

    .line 1125
    new-instance p0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 0

    .line 1109
    new-instance p0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object p0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 0

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 256
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    .line 242
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 243
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .locals 23

    move-object/from16 v1, p0

    monitor-enter p0

    .line 462
    :try_start_0
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 463
    monitor-exit p0

    return-void

    .line 465
    :cond_0
    :try_start_1
    sget-boolean v0, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    if-eqz v0, :cond_1

    .line 466
    invoke-direct/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->parsebm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1c

    .line 475
    :cond_1
    :try_start_2
    iget-object v0, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 476
    instance-of v2, v0, Ljava/io/ByteArrayInputStream;

    if-nez v2, :cond_2

    .line 477
    instance-of v2, v0, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_2

    .line 478
    instance-of v2, v0, Ljavax/mail/internet/SharedInputStream;

    if-nez v2, :cond_2

    .line 479
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1b

    :cond_2
    move-object v2, v0

    .line 483
    :goto_0
    :try_start_3
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_3

    .line 484
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 486
    :goto_1
    new-instance v4, Ljavax/mail/internet/ContentType;

    iget-object v5, v1, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 488
    const-string v5, "boundary"

    invoke-virtual {v4, v5}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 490
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 491
    :cond_4
    sget-boolean v4, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_2a

    const/4 v4, 0x0

    .line 496
    :goto_2
    :try_start_4
    new-instance v5, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v5, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 500
    :cond_5
    :goto_3
    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v8, :cond_6

    goto :goto_6

    .line 508
    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v12

    :goto_4
    if-gez v13, :cond_7

    goto :goto_5

    .line 509
    :cond_7
    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v10, :cond_29

    if-eq v14, v9, :cond_29

    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 513
    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_8

    .line 515
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_1a

    :catch_1
    move-exception v0

    goto/16 :goto_19

    .line 523
    :cond_8
    const-string v13, "--"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_26

    move-object v4, v8

    :goto_6
    if-eqz v8, :cond_25

    if-eqz v6, :cond_9

    .line 551
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 554
    :cond_9
    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 555
    array-length v6, v4

    const-wide/16 v7, 0x0

    move-wide v13, v7

    move v15, v11

    :goto_7
    if-eqz v15, :cond_a

    goto :goto_8

    :cond_a
    if-eqz v0, :cond_f

    .line 566
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v7

    .line 568
    :cond_b
    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_b

    :cond_c
    if-nez v16, :cond_e

    .line 571
    sget-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v0, :cond_d

    .line 575
    iput-boolean v11, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 695
    :goto_8
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 701
    :catch_2
    :try_start_6
    iput-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 702
    monitor-exit p0

    return-void

    .line 572
    :cond_d
    :try_start_7
    new-instance v0, Ljavax/mail/MessagingException;

    .line 573
    const-string v3, "missing multipart end boundary"

    .line 572
    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v3, 0x0

    goto :goto_9

    .line 580
    :cond_f
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v16

    move-object/from16 v3, v16

    .line 583
    :goto_9
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v17

    if-eqz v17, :cond_24

    if-nez v0, :cond_10

    .line 589
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v11, v17

    goto :goto_a

    .line 591
    :cond_10
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v13

    const/4 v11, 0x0

    :goto_a
    move/from16 v18, v12

    const/16 v19, -0x1

    const/16 v20, -0x1

    :goto_b
    if-eqz v18, :cond_1a

    add-int/lit16 v9, v6, 0x3ec

    .line 607
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->mark(I)V

    const/4 v9, 0x0

    :goto_c
    if-lt v9, v6, :cond_11

    goto :goto_d

    .line 610
    :cond_11
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v10

    aget-byte v12, v4, v9

    and-int/lit16 v12, v12, 0xff

    if-eq v10, v12, :cond_19

    :goto_d
    if-ne v9, v6, :cond_16

    .line 614
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_12

    .line 616
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v12

    if-ne v12, v10, :cond_12

    const/4 v10, 0x1

    .line 617
    iput-boolean v10, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    const/4 v10, 0x0

    :goto_e
    const/4 v15, 0x1

    goto/16 :goto_13

    :cond_12
    :goto_f
    const/16 v10, 0x20

    if-eq v9, v10, :cond_15

    const/16 v12, 0x9

    if-eq v9, v12, :cond_15

    const/16 v10, 0xa

    if-ne v9, v10, :cond_13

    goto :goto_10

    :cond_13
    const/16 v12, 0xd

    if-ne v9, v12, :cond_16

    const/4 v9, 0x1

    .line 629
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->mark(I)V

    .line 630
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    if-eq v9, v10, :cond_14

    .line 631
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :cond_14
    :goto_10
    const/4 v10, 0x0

    goto :goto_13

    .line 624
    :cond_15
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    goto :goto_f

    .line 636
    :cond_16
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    move/from16 v10, v19

    const/4 v12, -0x1

    if-eqz v11, :cond_18

    if-eq v10, v12, :cond_18

    .line 641
    invoke-virtual {v11, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v9, v20

    if-eq v9, v12, :cond_17

    .line 643
    invoke-virtual {v11, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_17
    move/from16 v19, v12

    move/from16 v20, v19

    goto :goto_12

    :cond_18
    move/from16 v19, v20

    goto :goto_11

    :cond_19
    move/from16 v10, v19

    move/from16 v19, v20

    const/4 v12, -0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    move/from16 v19, v10

    const/16 v10, 0x20

    goto :goto_c

    :cond_1a
    move/from16 v10, v19

    move/from16 v19, v20

    const/4 v12, -0x1

    :goto_11
    move/from16 v20, v19

    move/from16 v19, v10

    .line 649
    :goto_12
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    if-gez v9, :cond_1d

    .line 650
    sget-boolean v9, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v9, :cond_1c

    const/4 v10, 0x0

    .line 653
    iput-boolean v10, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    goto :goto_e

    :goto_13
    if-eqz v0, :cond_1b

    .line 686
    invoke-interface {v0, v7, v8, v13, v14}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v3

    goto :goto_14

    .line 688
    :cond_1b
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v3

    .line 689
    :goto_14
    invoke-super {v1, v3}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move v11, v10

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v12, 0x1

    goto/16 :goto_7

    .line 651
    :cond_1c
    new-instance v0, Ljavax/mail/MessagingException;

    .line 652
    const-string v3, "missing multipart end boundary"

    .line 651
    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/16 v10, 0xd

    if-eq v9, v10, :cond_20

    const/16 v10, 0xa

    if-ne v9, v10, :cond_1e

    goto :goto_15

    :cond_1e
    if-eqz v11, :cond_1f

    .line 677
    invoke-virtual {v11, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1f
    const/16 v10, 0x20

    const/4 v12, 0x1

    const/16 v18, 0x0

    goto/16 :goto_b

    :cond_20
    :goto_15
    if-eqz v0, :cond_21

    .line 665
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v13

    const-wide/16 v21, 0x1

    sub-long v13, v13, v21

    :cond_21
    const/16 v10, 0xd

    if-ne v9, v10, :cond_23

    const/4 v10, 0x1

    .line 668
    invoke-virtual {v2, v10}, Ljava/io/InputStream;->mark(I)V

    .line 669
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v10

    const/16 v12, 0xa

    if-ne v10, v12, :cond_22

    move/from16 v19, v9

    move/from16 v20, v10

    :goto_16
    const/16 v10, 0x20

    const/4 v12, 0x1

    const/16 v18, 0x1

    goto/16 :goto_b

    .line 672
    :cond_22
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :cond_23
    move/from16 v19, v9

    goto :goto_16

    .line 584
    :cond_24
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "Stream doesn\'t support mark"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_25
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "Missing start boundary"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_26
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-lez v3, :cond_5

    if-nez v7, :cond_27

    .line 536
    :try_start_8
    const-string v3, "line.separator"

    const-string v7, "\n"

    invoke-static {v3, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_17
    move-object v7, v3

    goto :goto_18

    .line 538
    :catch_3
    :try_start_9
    const-string v3, "\n"

    goto :goto_17

    :cond_27
    :goto_18
    if-nez v6, :cond_28

    .line 543
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v6, v3

    .line 544
    :cond_28
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    :cond_29
    add-int/lit8 v13, v13, -0x1

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_4

    .line 692
    :goto_19
    :try_start_a
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "IO Error"

    invoke-direct {v3, v4, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 695
    :goto_1a
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 699
    :catch_4
    :try_start_c
    throw v0

    .line 492
    :cond_2a
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v2, "Missing boundary parameter"

    invoke-direct {v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :goto_1b
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No inputstream from datasource"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_1c
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 5

    monitor-enter p0

    .line 425
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    new-instance v1, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 432
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 433
    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Ljava/io/FilterOutputStream;->write([B)V

    .line 436
    array-length v3, v2

    if-lez v3, :cond_0

    .line 437
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 438
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 442
    :goto_1
    iget-object v3, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 443
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 444
    iget-object v3, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 445
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 442
    :goto_2
    monitor-exit p0

    throw p1
.end method
