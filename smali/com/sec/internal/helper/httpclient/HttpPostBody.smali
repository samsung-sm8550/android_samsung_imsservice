.class public Lcom/sec/internal/helper/httpclient/HttpPostBody;
.super Ljava/lang/Object;
.source "HttpPostBody.java"


# static fields
.field public static final CONTENT_DISPOSITION_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final CONTENT_DISPOSITION_FORM_DATA:Ljava/lang/String; = "form-data"

.field public static final CONTENT_DISPOSITION_ICON:Ljava/lang/String; = "icon"

.field public static final CONTENT_TRANSFER_ENCODING_BASE64:Ljava/lang/String; = "base64"

.field public static final CONTENT_TRANSFER_ENCODING_BINARY:Ljava/lang/String; = "binary"

.field public static final CONTENT_TYPE_APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final CONTENT_TYPE_DEFAULT:Ljava/lang/String; = "application/octet-stream"

.field public static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/"

.field public static final CONTENT_TYPE_MULTIPART_FORMDATA:Ljava/lang/String; = "multipart/form-data"

.field public static final CONTENT_TYPE_MULTIPART_MIXED:Ljava/lang/String; = "multipart/mixed"

.field public static final CONTENT_TYPE_MULTIPART_RELATED:Ljava/lang/String; = "multipart/related"

.field public static final CONTENT_TYPE_X_WWW_FORM_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field private mBody:Ljava/lang/String;

.field private mBodySize:J

.field private mContentDisposition:Ljava/lang/String;

.field private mContentId:Ljava/lang/String;

.field private mContentTransferEncoding:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mData:[B

.field private mFile:Ljava/io/File;

.field private mFileIcon:Ljava/lang/String;

.field private mJSONBody:Lorg/json/JSONObject;

.field private mMultiparts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 58
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 45
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 150
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 151
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 152
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 153
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 154
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    if-eqz p3, :cond_0

    .line 156
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 86
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 89
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 90
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 92
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 93
    invoke-direct {p0, p3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 97
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 98
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 100
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 101
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 103
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 104
    invoke-direct {p0, p3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 106
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 107
    invoke-direct {p0, p4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 162
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 163
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 164
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 165
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 166
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 167
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 168
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide p2

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 111
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 112
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 113
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 114
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 115
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p3, :cond_0

    .line 117
    array-length p1, p3

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 122
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 124
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 125
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 126
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p3, :cond_0

    .line 128
    array-length p1, p3

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 130
    :cond_0
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 131
    iget-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-direct {p0, p4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 135
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 136
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 137
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 138
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 139
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p3, :cond_0

    .line 141
    array-length p1, p3

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 143
    :cond_0
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 144
    iget-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-direct {p0, p4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 145
    iput-object p5, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 146
    invoke-direct {p0, p5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 72
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 75
    iget-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->convertPrams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 50
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getFieldSize(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    .line 65
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p1, :cond_0

    .line 67
    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    :cond_0
    return-void
.end method

.method private convertPrams(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 222
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->convertPrams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 224
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private convertPrams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 232
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 233
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 238
    :cond_0
    const-string v2, "&"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const-string v2, "="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFieldSize(Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private makeIndent(I)Ljava/lang/String;
    .locals 2

    .line 293
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    .line 295
    const-string v1, "    "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toString(I)Ljava/lang/String;
    .locals 13

    .line 260
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    if-nez v3, :cond_0

    .line 265
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 267
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    add-int/lit8 v5, p1, 0x1

    .line 268
    invoke-direct {v4, v5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 272
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    const-string v4, "]"

    const-string v5, "mMultiparts: "

    const-string v6, "mFile: "

    const-string v7, "mContentType: "

    const-string v8, "mContentTransferEncoding: "

    const-string v9, "mContentDisposition: "

    const-string v10, ")[\r\n"

    const-string v11, "HttpPostBody(depth"

    const-string v12, "\r\n"

    if-eqz v3, :cond_2

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mBody: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 280
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mFileIcon: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mContentId: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mData: length is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p1, :cond_3

    array-length p1, p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mData: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    if-eqz p1, :cond_4

    array-length v7, p1

    const/16 v8, 0x2000

    if-ge v7, v8, :cond_4

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1}, Ljava/lang/String;-><init>([B)V

    move-object p1, v7

    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBody:Ljava/lang/String;

    return-object p0
.end method

.method public getBodySize()J
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mBodySize:J

    return-wide v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentDisposition:Ljava/lang/String;

    return-object p0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentId:Ljava/lang/String;

    return-object p0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getData()[B
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mData:[B

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFile:Ljava/io/File;

    return-object p0
.end method

.method public getFileIcon()Ljava/lang/String;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mFileIcon:Ljava/lang/String;

    return-object p0
.end method

.method public getJSONBody()Lorg/json/JSONObject;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mJSONBody:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getMultiparts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mMultiparts:Ljava/util/List;

    return-object p0
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;->mContentTransferEncoding:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 251
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 253
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 256
    const-string p0, ""

    return-object p0
.end method
