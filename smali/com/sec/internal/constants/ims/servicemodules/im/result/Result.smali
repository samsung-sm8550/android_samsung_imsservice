.class public Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

.field private mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field private mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

.field private mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

.field private mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field private mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V
    .locals 7

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 7

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v2, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    iget-object v3, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    iget-object v4, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    iget-object v5, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    iget-object v6, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    return-void
.end method

.method private init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V
    .locals 2

    .line 37
    const-string v0, "init: imError is null."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 38
    const-string p1, "init: type is null."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 39
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    .line 40
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 41
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    .line 42
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    return-void
.end method

.method private toString(Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;)Ljava/lang/String;
    .locals 4

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->getTypeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const-string v3, ","

    if-eqz v2, :cond_0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->getTypeImError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    if-eqz v2, :cond_1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->getSipResponseTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    if-eqz v2, :cond_2

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->getMsrpResponseTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    if-eqz v2, :cond_3

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->getWarningHeaderTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    if-eqz v2, :cond_4

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->getReasonHeaderTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0
.end method

.method public getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    return-object p0
.end method

.method public getReasonHdr()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    return-object p0
.end method

.method public getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    return-object p0
.end method

.method public getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-object p0
.end method

.method public getWarningHdr()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    return-object p0
.end method

.method public toCriticalLog()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->toString(Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;-><init>(Z)V

    invoke-direct {p0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->toString(Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
