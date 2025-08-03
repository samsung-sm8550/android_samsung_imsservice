.class final enum Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$1;
.super Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
.source "CellIdentityWrapper.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$1-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method isMatchedWith(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method retrieveAreaCode(Landroid/telephony/CellIdentity;)I
    .locals 0

    .line 0
    const p0, 0x7fffffff

    return p0
.end method

.method retrieveCellId(Landroid/telephony/CellIdentity;)J
    .locals 0

    .line 0
    const-wide/32 p0, 0x7fffffff

    return-wide p0
.end method
