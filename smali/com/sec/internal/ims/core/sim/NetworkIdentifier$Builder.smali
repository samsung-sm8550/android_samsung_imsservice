.class Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;
.super Ljava/lang/Object;
.source "NetworkIdentifier.java"


# static fields
.field private static final LAB_SIM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGid1:Ljava/lang/String;

.field private mIsHexadecimal:Z

.field private mMccMnc:Ljava/lang/String;

.field private mNetworkName:Ljava/lang/String;

.field private mSpName:Ljava/lang/String;

.field private mSubset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    const-string v0, "00101f"

    const-string v1, "99999"

    const-string v2, "00101"

    const-string v3, "001001"

    const-string v4, "001010"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->LAB_SIM:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clean()V
    .locals 2

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mNetworkName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mMccMnc:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mSubset:Ljava/lang/String;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mIsHexadecimal:Z

    .line 55
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mGid1:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mSpName:Ljava/lang/String;

    return-void
.end method

.method private convertGid1ToHex()V
    .locals 2

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mGid1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mGid1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    const-string v0, "MnoMap_NetworkIdentifier"

    const-string v1, "invalid NetworkInfo have CodeType, but no gid1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mGid1:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private getNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 60
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method build()Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    .locals 7

    .line 67
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mIsHexadecimal:Z

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->convertGid1ToHex()V

    .line 71
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mMccMnc:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mSubset:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mGid1:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mSpName:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method getNetworkName()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method isInvalid()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mNetworkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GCF"

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mMccMnc:Ljava/lang/String;

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->LAB_SIM:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mMccMnc:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method setNext(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "NetworkInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->clean()V

    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "NetworkName"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->getNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_1
    const-string v1, "MCCMNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->getNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mMccMnc:Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_2
    const-string v1, "SPCode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->getNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mSubset:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_3
    const-string v1, "CodeType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    const-string v0, "HEX"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->getNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mIsHexadecimal:Z

    goto :goto_0

    .line 43
    :cond_4
    const-string v1, "SubsetCode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->getNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mGid1:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_5
    const-string v1, "Spname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->getNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mSpName:Ljava/lang/String;

    :cond_6
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 92
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mMccMnc:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mNetworkName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mSubset:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mGid1:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->mSpName:Ljava/lang/String;

    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "mccmnc: %s, networkName: %s, subset: %s, gid1: %s, spname: %s"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
