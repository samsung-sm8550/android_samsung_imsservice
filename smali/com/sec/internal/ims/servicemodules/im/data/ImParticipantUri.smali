.class public Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;
.super Ljava/lang/Object;
.source "ImParticipantUri.java"


# instance fields
.field private final mImsUri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method public constructor <init>(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->getImsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->getImsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getImsUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_2

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getPort()I

    move-result p0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    const-string v0, "@"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_2
    add-int/lit8 p0, p0, 0x1f

    return p0

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;->mImsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
