.class final enum Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7;
.super Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
.source "CellIdentityWrapper.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method isMatchedWith(I)Z
    .locals 0

    .line 0
    const/16 p0, 0x14

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method retrieveAreaCode(Landroid/telephony/CellIdentity;)I
    .locals 0

    .line 140
    instance-of p0, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p0, :cond_0

    .line 141
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method retrieveCellId(Landroid/telephony/CellIdentity;)J
    .locals 0

    .line 146
    instance-of p0, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p0, :cond_0

    .line 147
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    :goto_0
    return-wide p0
.end method
