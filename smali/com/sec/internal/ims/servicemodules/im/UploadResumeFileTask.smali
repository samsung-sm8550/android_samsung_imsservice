.class public Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;
.super Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;
.source "UploadResumeFileTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UploadResumeFileTask"


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)V

    .line 56
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "phoneId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;)Z
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result p0

    return p0
.end method

.method private doResumeFile(Ljava/net/URL;JJJ)Z
    .locals 24

    move-object/from16 v1, p0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 202
    const-string v13, " IOException happened."

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doResumeFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p6

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 204
    iput-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 207
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/net/URL;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 209
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v16, v7

    move-wide/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/helper/HttpRequest;->contentRange(JJJ)Lcom/sec/internal/helper/HttpRequest;

    const/4 v8, 0x0

    .line 212
    :try_start_0
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xc8

    .line 223
    const-string v6, " happened. Retry Upload Task."

    if-eq v2, v3, :cond_5

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x191

    if-eq v2, v3, :cond_1

    const/16 v0, 0x194

    if-eq v2, v0, :cond_0

    const/16 v0, 0x19a

    if-eq v2, v0, :cond_0

    .line 263
    :try_start_1
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 264
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v0, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    return v8

    :catch_0
    move-exception v0

    goto/16 :goto_13

    :catch_1
    move-exception v0

    move-object v5, v6

    move v3, v8

    const/4 v2, -0x1

    :goto_0
    const/4 v4, 0x3

    goto/16 :goto_14

    .line 243
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 244
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    return v8

    :cond_1
    const/4 v3, 0x1

    .line 229
    iget v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "PUT"

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 232
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v0, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    return v8

    .line 236
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/net/URL;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    .line 237
    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/HttpRequest;->useNetwork(Landroid/net/Network;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v3

    .line 238
    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;
    :try_end_1
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 248
    :cond_3
    :try_start_2
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v3, "Location"

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 249
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 250
    new-instance v2, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v7, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    iget-object v8, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    iget-boolean v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v4

    invoke-direct/range {v17 .. v22}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 253
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 254
    invoke-static {v2}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v5, v6

    const/4 v2, -0x1

    const/4 v3, 0x0

    goto :goto_0

    .line 258
    :cond_4
    const-string v2, "doResumeFile: OpenId process failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 260
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    return v2

    .line 225
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/net/URL;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2
    :try_end_2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;
    :try_end_3
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 282
    :goto_1
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    const-wide/16 v7, 0x14

    div-long/2addr v2, v7

    const-wide/32 v7, 0xf000

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/32 v7, 0x7d000

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 287
    :try_start_4
    new-instance v7, Ljava/io/BufferedInputStream;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v7, v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11

    .line 289
    :try_start_5
    invoke-virtual {v7, v9, v10}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v3
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10

    cmp-long v8, v3, v9

    if-gez v8, :cond_6

    .line 293
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 296
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to skip "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes actually skipped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v3, 0x0

    const/4 v8, -0x1

    :try_start_8
    invoke-virtual {v1, v0, v8, v8, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    return v3

    :catch_4
    move-exception v0

    goto/16 :goto_11

    :catch_5
    move-exception v0

    const/4 v3, 0x0

    const/4 v8, -0x1

    goto/16 :goto_11

    :cond_6
    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 318
    :try_start_9
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentType:Ljava/lang/String;

    if-eqz v3, :cond_7

    goto :goto_3

    .line 321
    :cond_7
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    iget-object v8, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFileName:Ljava/lang/String;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentUri:Landroid/net/Uri;

    invoke-static {v3, v8, v4}, Lcom/sec/internal/helper/FileUtils;->getContentType(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 324
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 325
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/HttpRequest;->bufferSize(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    .line 326
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/HttpRequest;->contentType(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    sub-long v3, v11, v9

    const-wide/16 v17, 0x1

    add-long v3, v3, v17

    .line 327
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/HttpRequest;->contentLength(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2
    :try_end_9
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v8, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x1

    move-wide/from16 v3, p2

    move-object v12, v5

    move-object/from16 v23, v6

    move-wide/from16 v5, p4

    move-object v11, v7

    const/16 v16, 0x1

    move-wide/from16 v7, p6

    .line 328
    :try_start_a
    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/helper/HttpRequest;->contentRange(JJJ)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;

    invoke-direct {v3, v1, v9, v10}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;J)V

    .line 329
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/HttpRequest;->progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;

    .line 353
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2, v11}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result v2
    :try_end_a
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_9

    .line 382
    :try_start_b
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_4

    .line 385
    :catch_6
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_4
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_8

    .line 388
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_8
    const/4 v1, 0x0

    return v1

    .line 359
    :cond_9
    :try_start_c
    const-string v2, "Upload file done. Read http response."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->ok()Z

    move-result v2

    if-nez v2, :cond_b

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doResumeFile: Failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_c
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 382
    :try_start_d
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_5

    .line 385
    :catch_7
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_5
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_a

    .line 388
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_a
    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    :goto_6
    const/4 v4, 0x3

    goto :goto_b

    .line 366
    :cond_b
    :try_start_e
    const-string v2, "doResumeFile: Success"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 382
    :try_start_f
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_7

    .line 385
    :catch_a
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_7
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_c

    .line 388
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_c
    return v16

    :catchall_1
    move-exception v0

    move-object v11, v7

    goto/16 :goto_f

    :catch_b
    move-exception v0

    move-object v11, v7

    goto :goto_8

    :catch_c
    move-exception v0

    move-object/from16 v23, v6

    move-object v11, v7

    goto :goto_6

    .line 378
    :goto_8
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 379
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 382
    :try_start_11
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_9

    .line 385
    :catch_d
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_9
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_d

    .line 388
    :goto_a
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 370
    :goto_b
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 371
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 372
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_c

    .line 374
    :cond_e
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v23

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 382
    :goto_c
    :try_start_13
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_d

    .line 385
    :catch_e
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_d
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_d

    goto :goto_a

    :goto_e
    return v1

    .line 382
    :goto_f
    :try_start_14
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    goto :goto_10

    .line 385
    :catch_f
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_10
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_f

    .line 388
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 390
    :cond_f
    throw v0

    :catch_10
    move-exception v0

    move-object v11, v7

    goto :goto_11

    :catch_11
    move-exception v0

    move-object/from16 v7, v16

    .line 303
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    :try_start_15
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    :goto_12
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    return v3

    :catch_13
    move-exception v0

    move-object v5, v6

    const/4 v4, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    goto :goto_14

    .line 277
    :goto_13
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " happened. Cancel resume."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    return v3

    .line 268
    :goto_14
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 269
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 270
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v4, 0x1e

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_15

    .line 272
    :cond_10
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    :goto_15
    return v3

    :catch_14
    move-exception v0

    move v3, v8

    const/4 v2, -0x1

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v0, v2, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    return v3
.end method

.method private getRequestUrl()Ljava/lang/String;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 73
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private getUploadInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .locals 22

    move-object/from16 v1, p0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&get_upload_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 83
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUploadInfo: params="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 84
    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 88
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v9

    iput-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 91
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "mHttpRequest is null"

    if-nez v9, :cond_1

    .line 92
    :try_start_1
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_1
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_0
    return-object v4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_7

    .line 98
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v9
    :try_end_2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    const-string v11, " "

    const-string v12, "fthttp_upload_resume_from_the_start"

    const/16 v13, 0x1f7

    const/16 v14, 0xc8

    if-eq v9, v14, :cond_d

    const/16 v15, 0x12e

    if-eq v9, v15, :cond_a

    const/16 v15, 0x191

    if-eq v9, v15, :cond_6

    if-eq v9, v13, :cond_3

    .line 153
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUploadInfo: Receive "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v2, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_3
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_2

    .line 193
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_2
    return-object v4

    .line 126
    :cond_3
    :try_start_4
    const-string v2, "Receive 503 Unavailable"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    invoke-interface {v2, v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v9, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v2, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_4
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    :goto_0
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_5

    .line 193
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_5
    return-object v4

    .line 106
    :cond_6
    :try_start_5
    iget v15, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v14, "GET"

    invoke-virtual {v1, v15, v13, v4, v14}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_1

    .line 110
    :cond_7
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v13, v13, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 114
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2, v4}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    .line 115
    invoke-virtual {v2, v6}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 117
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-nez v2, :cond_9

    .line 118
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_5
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_8

    .line 193
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_8
    const/4 v1, 0x0

    return-object v1

    .line 122
    :cond_9
    :try_start_6
    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v9

    :goto_1
    const/16 v2, 0xc8

    goto :goto_2

    .line 135
    :cond_a
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v4, "Location"

    invoke-virtual {v2, v4}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 136
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 137
    new-instance v2, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    iget-object v13, v9, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    move-object/from16 v16, v2

    move/from16 v17, v4

    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 140
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 141
    invoke-static {v2}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 143
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2, v6}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 144
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v9

    goto :goto_1

    .line 148
    :cond_b
    const-string v2, "getUploadInfo: openId process failed"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v2, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_6
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 192
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_c

    .line 193
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_c
    const/4 v1, 0x0

    return-object v1

    .line 102
    :cond_d
    :try_start_7
    const-string v2, "Receive 200 OK"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    if-ne v2, v9, :cond_f

    .line 159
    const-string v2, "getUploadInfo: Success"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v2

    .line 161
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUploadInfo: Received. body="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parseResume(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object v2
    :try_end_7
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 192
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_e

    .line 193
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_e
    return-object v2

    .line 166
    :cond_f
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUploadInfo: Failed, Receive "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1f7

    if-ne v2, v9, :cond_12

    .line 168
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    invoke-interface {v2, v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 169
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v9, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_3

    .line 171
    :cond_10
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v2, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_8
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 192
    :goto_3
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_11

    .line 193
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_11
    const/4 v1, 0x0

    return-object v1

    .line 175
    :cond_12
    :try_start_9
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v2, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_9
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 192
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_13

    .line 193
    :goto_4
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_13
    const/4 v1, 0x0

    goto :goto_9

    .line 189
    :goto_5
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 192
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_13

    goto :goto_4

    .line 186
    :goto_6
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v7, v7, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 192
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_13

    goto :goto_4

    .line 178
    :goto_7
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 179
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 180
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v7, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_8

    .line 182
    :cond_14
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " happened. Retry Upload Task."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v7, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 192
    :goto_8
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_13

    goto :goto_4

    :goto_9
    return-object v1

    :goto_a
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_15

    .line 193
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 195
    :cond_15
    throw v2
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Long;
    .locals 15

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 476
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mMnoStrategy is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 478
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 481
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 482
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 484
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTotal:J

    .line 488
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getUploadInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 490
    const-string v1, "Failed to get upload info."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 495
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v7, v7, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    cmp-long v3, v3, v7

    const/4 v4, 0x1

    if-lez v3, :cond_2

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploaded over than requested size.  : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v1, v4

    goto :goto_1

    .line 498
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v9, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    cmp-long v3, v7, v9

    if-nez v3, :cond_3

    .line 499
    const-string v1, "Already uploaded."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    :cond_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getUrl()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 503
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getUrl()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v0

    add-long v9, v0, v5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v13, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    sub-long v11, v13, v5

    move-object v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->doResumeFile(Ljava/net/URL;JJJ)Z

    move-result v1

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 508
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getDownloadInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 511
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onCompleted(Ljava/lang/String;)V

    .line 515
    :cond_5
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->doInBackground()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected getDownloadInfo()Ljava/lang/String;
    .locals 14

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&get_download_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 398
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadInfo: params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 401
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 405
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v5
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    const-string v6, " "

    const/16 v7, 0xc8

    if-eq v5, v7, :cond_6

    const/16 v8, 0x12e

    if-eq v5, v8, :cond_3

    const/16 v8, 0x191

    if-eq v5, v8, :cond_1

    .line 442
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_0
    return-object v2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 412
    :cond_1
    :try_start_2
    iget v8, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "GET"

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 413
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_0

    .line 416
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 419
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0, v8}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 421
    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v5

    goto :goto_0

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v5, "Location"

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 426
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 427
    new-instance v0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v11, v5, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    iget-object v12, v5, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    iget-boolean v13, v5, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 430
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 431
    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 432
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v5

    goto :goto_0

    .line 438
    :cond_4
    const-string v0, "getDownloadInfo: OPenID Process failed!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_5

    .line 466
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_5
    return-object v2

    .line 408
    :cond_6
    :try_start_3
    const-string v0, "Receive 200 OK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ne v7, v5, :cond_8

    .line 447
    const-string v0, "getDownloadInfo: Success"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_7

    .line 466
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_7
    return-object v0

    .line 450
    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDownloadInfo: Failed, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0, v0, v4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_4
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_a

    .line 466
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    goto :goto_5

    .line 462
    :goto_2
    :try_start_5
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDownloadInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " happened. Cancel."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v0, v3, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_a

    goto :goto_1

    .line 454
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 455
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 456
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_4

    .line 458
    :cond_9
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " happened. Retry Upload Task."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 465
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_a

    goto :goto_1

    :cond_a
    :goto_5
    return-object v2

    :goto_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_b

    .line 466
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 468
    :cond_b
    throw v0
.end method
