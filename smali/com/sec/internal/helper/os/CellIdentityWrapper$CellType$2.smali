.class final enum Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$2;
.super Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
.source "CellIdentityWrapper.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$2-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method isMatchedWith(I)Z
    .locals 1

    .line 0
    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eq p1, p0, :cond_1

    if-eq p1, v0, :cond_1

    const/16 p0, 0x10

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method retrieveAreaCode(Landroid/telephony/CellIdentity;)I
    .locals 0

    .line 40
    instance-of p0, p1, Landroid/telephony/CellIdentityGsm;

    if-eqz p0, :cond_0

    .line 41
    check-cast p1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method retrieveCellId(Landroid/telephony/CellIdentity;)J
    .locals 0

    .line 46
    instance-of p0, p1, Landroid/telephony/CellIdentityGsm;

    if-eqz p0, :cond_0

    .line 47
    check-cast p1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    int-to-long p0, p0

    goto :goto_0

    :cond_0
    const-wide/32 p0, 0x7fffffff

    :goto_0
    return-wide p0
.end method
