.class public Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;
.super Ljava/lang/Object;
.source "UtFeatureData.java"


# instance fields
.field cbbaic:Ljava/lang/String;

.field cbbaoc:Ljava/lang/String;

.field cbbicwr:Ljava/lang/String;

.field cbboic:Ljava/lang/String;

.field cbboic_exhc:Ljava/lang/String;

.field cfUriType:Ljava/lang/String;

.field cfb:Ljava/lang/String;

.field cfni:Ljava/lang/String;

.field cfnr:Ljava/lang/String;

.field cfnrc:Ljava/lang/String;

.field cfu:Ljava/lang/String;

.field csfbErrorCodeList:[Ljava/lang/String;

.field delay_disconnect_pdn:I

.field insertNewRule:Z

.field ip_version:I

.field isCBSingleElement:Z

.field isCFSingleElement:Z

.field isDisconnectXcapPdn:Z

.field isErrorMsgDisplay:Z

.field isNeedFirstGet:Z

.field isNeedInternationalNumber:Z

.field isNeedSeparateCFA:Z

.field isNeedSeparateCFNL:Z

.field isNeedSeparateCFNRY:Z

.field isReuseConnection:Z

.field noMediaForCB:Z

.field setAllMediaCF:Z

.field ssXcapConfigExempt:I

.field supportAlternativeMediaForCb:Z

.field supportAlternativeMediaForCf:Z

.field supportCallbarring:Z

.field supportSimservsRetry:Z

.field support_media:Z

.field support_ss_namespace:Z

.field support_tls:Z

.field timerFor403:I

.field ussdExempt:I


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->support_tls:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_tls:Z

    .line 51
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isCFSingleElement:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    .line 52
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isCBSingleElement:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    .line 53
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->support_media:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    .line 54
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->support_ss_namespace:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    .line 55
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->supportSimservsRetry:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportSimservsRetry:Z

    .line 56
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfb:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfb:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfu:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfu:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfnr:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnr:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfnrc:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnrc:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfni:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfni:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cbbaic:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cbbicwr:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cbbaoc:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cbboic:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cbboic_exhc:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic_exhc:Ljava/lang/String;

    .line 66
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->timerFor403:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->timerFor403:I

    .line 67
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isNeedSeparateCFNL:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNL:Z

    .line 68
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isNeedSeparateCFNRY:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNRY:Z

    .line 69
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isNeedSeparateCFA:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFA:Z

    .line 70
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isNeedFirstGet:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedFirstGet:Z

    .line 71
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isErrorMsgDisplay:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isErrorMsgDisplay:Z

    .line 72
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isDisconnectXcapPdn:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isDisconnectXcapPdn:Z

    .line 73
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isReuseConnection:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isReuseConnection:Z

    .line 74
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->delay_disconnect_pdn:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->delay_disconnect_pdn:I

    .line 75
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->csfbErrorCodeList:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->csfbErrorCodeList:[Ljava/lang/String;

    .line 76
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->ip_version:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    .line 77
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->insertNewRule:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->insertNewRule:Z

    .line 78
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->noMediaForCB:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->noMediaForCB:Z

    .line 79
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->setAllMediaCF:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->setAllMediaCF:Z

    .line 80
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->cfUriType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfUriType:Ljava/lang/String;

    .line 81
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->supportAlternativeMediaForCf:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCf:Z

    .line 82
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->supportAlternativeMediaForCb:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCb:Z

    .line 83
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->isNeedInternationalNumber:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedInternationalNumber:Z

    .line 84
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->ssXcapConfigExempt:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ssXcapConfigExempt:I

    .line 85
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->ussdExempt:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ussdExempt:I

    .line 86
    iget-boolean p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->supportCallbarring:Z

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportCallbarring:Z

    return-void
.end method

.method public static getBuilder()Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;
    .locals 1

    .line 90
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setTurnOffGcfCondition()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNRY:Z

    .line 46
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNL:Z

    return-void
.end method
