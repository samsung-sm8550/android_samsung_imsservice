.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;
.super Ljava/lang/Object;
.source "NSDSCommonParameters.java"


# instance fields
.field private mAkaToken:Ljava/lang/String;

.field private mChallengeResponse:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mImsiEap:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mChallengeResponse:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mAkaToken:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mImsiEap:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mDeviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAkaToken()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mAkaToken:Ljava/lang/String;

    return-object p0
.end method

.method public getChallengeResponse()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mChallengeResponse:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getImsiEap()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mImsiEap:Ljava/lang/String;

    return-object p0
.end method
