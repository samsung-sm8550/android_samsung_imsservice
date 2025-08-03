.class public Lcom/sec/internal/ims/servicemodules/im/ImMultipart;
.super Ljava/lang/Object;
.source "ImMultipart.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImMultipart"


# instance fields
.field private mBody:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mSuggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getBoundary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    return-void

    .line 25
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->parseParts(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "boundary = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ContentType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImMultipart"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getBoundary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 46
    const-string p0, "boundary="

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    add-int/lit8 p0, p0, 0x9

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x3b

    .line 53
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 54
    const-string v2, ""

    const-string v3, "\""

    if-ne v1, v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 48
    :cond_2
    :goto_1
    const-string p0, "ImMultipart"

    const-string p1, "no boundary"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 101
    const-string p0, "\r?\n"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    .line 102
    const-string v3, ": |:"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 103
    array-length v3, v2

    if-ne v3, v4, :cond_0

    const-string v3, "content-type"

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 104
    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isMultipart(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 30
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "multipart/mixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parsePart(Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->parsePartWithHeaders(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->parsePartWithoutHeaders(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private parsePartWithHeaders(Ljava/lang/String;)V
    .locals 3

    .line 85
    const-string v0, "\r?\n\r?\n"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 86
    array-length v2, v0

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 88
    const-string p1, "application/vnd.gsma.botsuggestion.v1.0+json"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 89
    aget-object p1, v0, v2

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mSuggestion:Ljava/lang/String;

    goto :goto_1

    .line 91
    :cond_1
    aget-object p1, v0, v2

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_2
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    .line 96
    const-string/jumbo p1, "text/plain"

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private parsePartWithoutHeaders(Ljava/lang/String;)V
    .locals 2

    .line 77
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-le v1, v0, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    .line 80
    const-string/jumbo p1, "text/plain"

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private parseParts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r?\n?--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(--)?\r?\n?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 60
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 61
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->parsePart(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getSuggestion()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mSuggestion:Ljava/lang/String;

    return-object p0
.end method
