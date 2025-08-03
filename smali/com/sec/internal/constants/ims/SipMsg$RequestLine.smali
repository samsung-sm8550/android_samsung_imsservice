.class public Lcom/sec/internal/constants/ims/SipMsg$RequestLine;
.super Lcom/sec/internal/constants/ims/SipMsg$StartLine;
.source "SipMsg.java"


# instance fields
.field method:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method protected constructor <init>([Ljava/lang/String;)V
    .locals 2

    .line 289
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;-><init>()V

    const/4 v0, 0x0

    .line 290
    aget-object v0, p1, v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->method:Ljava/lang/String;

    const/4 v0, 0x1

    .line 291
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->uri:Ljava/lang/String;

    const/4 v0, 0x2

    .line 292
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->sipVer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->method:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->method:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
