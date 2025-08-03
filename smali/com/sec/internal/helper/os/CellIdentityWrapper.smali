.class public Lcom/sec/internal/helper/os/CellIdentityWrapper;
.super Ljava/lang/Object;
.source "CellIdentityWrapper.java"


# static fields
.field public static final DEFAULT:Lcom/sec/internal/helper/os/CellIdentityWrapper;


# instance fields
.field private final mAreaCode:I

.field private final mCellId:J

.field private final mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-static {v0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->from(Landroid/telephony/CellIdentity;)Lcom/sec/internal/helper/os/CellIdentityWrapper;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->DEFAULT:Lcom/sec/internal/helper/os/CellIdentityWrapper;

    return-void
.end method

.method private constructor <init>(Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;Landroid/telephony/CellIdentity;)V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 190
    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->retrieveAreaCode(Landroid/telephony/CellIdentity;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mAreaCode:I

    .line 191
    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->retrieveCellId(Landroid/telephony/CellIdentity;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellId:J

    return-void
.end method

.method public static from(Landroid/telephony/CellIdentity;)Lcom/sec/internal/helper/os/CellIdentityWrapper;
    .locals 2

    .line 166
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->UNKNOWN:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 167
    instance-of v1, p0, Landroid/telephony/CellIdentityLte;

    if-eqz v1, :cond_0

    .line 168
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->LTE:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    goto :goto_0

    .line 169
    :cond_0
    instance-of v1, p0, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_1

    .line 170
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->NR:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    goto :goto_0

    .line 171
    :cond_1
    instance-of v1, p0, Landroid/telephony/CellIdentityGsm;

    if-eqz v1, :cond_2

    .line 172
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->GSM:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    goto :goto_0

    .line 173
    :cond_2
    instance-of v1, p0, Landroid/telephony/CellIdentityWcdma;

    if-eqz v1, :cond_3

    .line 174
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->WCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    goto :goto_0

    .line 175
    :cond_3
    instance-of v1, p0, Landroid/telephony/CellIdentityTdscdma;

    if-eqz v1, :cond_4

    .line 176
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->TDSCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    goto :goto_0

    .line 177
    :cond_4
    instance-of v1, p0, Landroid/telephony/CellIdentityCdma;

    if-eqz v1, :cond_5

    .line 178
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->CDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 181
    :cond_5
    :goto_0
    new-instance v1, Lcom/sec/internal/helper/os/CellIdentityWrapper;

    invoke-direct {v1, v0, p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;-><init>(Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;Landroid/telephony/CellIdentity;)V

    return-object v1
.end method


# virtual methods
.method public getAreaCode()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mAreaCode:I

    return p0
.end method

.method public getCellId()J
    .locals 2

    .line 225
    iget-wide v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellId:J

    return-wide v0
.end method

.method public isCdma()Z
    .locals 1

    .line 246
    iget-object p0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->TDSCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->CDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    if-ne p0, v0, :cond_0

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

.method public isMatched(I)Z
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->isMatchedWith(I)Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isValidAreaCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isValidCellId()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValidAreaCode()Z
    .locals 1

    .line 233
    iget p0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mAreaCode:I

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValidCellId()Z
    .locals 6

    .line 237
    iget-object v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v1, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->NR:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 238
    iget-wide v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellId:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p0, v0, v4

    if-eqz p0, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellId:J

    const-wide/32 v4, 0x7fffffff

    cmp-long p0, v0, v4

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v1, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->UNKNOWN:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    if-ne v0, v1, :cond_0

    .line 198
    const-string p0, "Unknown CellIdentity"

    return-object p0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    const-string v1, "CellIdentity<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AreaCode: "

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isValidAreaCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget v1, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mAreaCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 206
    :cond_1
    const-string/jumbo v1, "tac or lac unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :goto_0
    const-string v1, " Cell ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isValidCellId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    iget-wide v1, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 213
    :cond_2
    const-string p0, "cid unavailable"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
