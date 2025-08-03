.class public Lcom/sec/internal/ims/servicemodules/ss/ResponseState;
.super Lcom/sec/internal/helper/State;
.source "ResponseState.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

.field private mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    return-void
.end method

.method private cfAllInfoFromCache(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 270
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v2, 0x5

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    .line 274
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v2

    array-length v5, v2

    move-object/from16 v6, p2

    move v7, v4

    :goto_1
    if-ge v7, v5, :cond_9

    aget-object v8, v2, v7

    .line 275
    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MEDIA = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v9, -0x1

    const/4 v10, 0x0

    move v11, v1

    move v12, v9

    :goto_2
    const/4 v13, 0x4

    if-ge v11, v13, :cond_7

    .line 281
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v6, v11, v8}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v6

    .line 282
    sget-object v13, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v14, v14, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET RULE ID "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v14, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_3
    move v3, v4

    goto :goto_6

    :cond_1
    if-ne v12, v9, :cond_2

    .line 290
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v12, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    goto :goto_4

    .line 291
    :cond_2
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-eq v12, v3, :cond_3

    goto :goto_3

    :cond_3
    :goto_4
    if-nez v12, :cond_4

    goto :goto_5

    :cond_4
    if-nez v10, :cond_5

    .line 301
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    move-object v10, v3

    goto :goto_5

    .line 302
    :cond_5
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_8

    .line 309
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v9, "This target number is valid for CF ALL."

    invoke-static {v3, v8, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v8, p1

    .line 311
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move-object/from16 v8, p1

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method private cfInfoFromCache()V
    .locals 13

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 202
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v4, 0x4

    const/4 v5, 0x5

    if-eq v3, v4, :cond_8

    if-ne v3, v5, :cond_0

    goto/16 :goto_4

    .line 215
    :cond_0
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    const-string v6, "] "

    const-string v7, "GET RULE ID ["

    if-eqz v4, :cond_3

    .line 216
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v8, v1, v4

    .line 217
    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v8, v9, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v10, v9, v8}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 221
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v11, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 224
    invoke-direct {p0, v9}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v8

    .line 225
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 229
    :cond_3
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 230
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v8, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 233
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v1

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 238
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v8, v1, v4

    .line 239
    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v8, v9, :cond_5

    goto :goto_3

    .line 242
    :cond_5
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v10, v9, v8}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 243
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v11, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 246
    invoke-direct {p0, v9}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v8

    .line 247
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 253
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 254
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 255
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v8, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v1

    .line 258
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->cfAllInfoFromCache(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)V

    .line 205
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 206
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "There is no matched rule for CF ALL."

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    const-string/jumbo v2, "serviceClass"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v2, "condition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    return-void

    .line 262
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 263
    invoke-virtual {v1, v5}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 264
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    .line 265
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    new-array v1, v2, [Landroid/os/Bundle;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    return-void
.end method

.method private completeGetSdByRetry()V
    .locals 4

    .line 525
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->recoverUtProfileAfter404Retry()V

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/16 v2, 0x66

    if-eq v1, v2, :cond_3

    const/16 v2, 0x68

    if-eq v1, v2, :cond_3

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_1

    const/16 p0, 0x72

    if-eq v1, p0, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 537
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Z)V

    goto :goto_0

    .line 545
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x4

    .line 546
    filled-new-array {v3, v1}, [I

    move-result-object v1

    const-string/jumbo v2, "queryClir"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 547
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto :goto_0

    .line 540
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 541
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v1, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v1

    const-string v2, "imsSsInfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 542
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto :goto_0

    .line 530
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 531
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    const-string/jumbo v2, "serviceClass"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v2, "condition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private createRuleId(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 563
    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    .line 564
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    const-string v2, "DBL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 570
    const-string v5, "$"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_1

    .line 575
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "number"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const-string/jumbo v3, "status"

    if-eqz v2, :cond_3

    .line 577
    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 579
    :cond_3
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 581
    :goto_2
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const-string v2, "condition"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 582
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-object p0
.end method

.method private handleHttpResult()V
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0xc

    const/16 v3, 0x74

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportSimservsRetry:Z

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-eq v1, v3, :cond_4

    .line 97
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "Requested document is not found. Get simserv document."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    .line 99
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 100
    iput v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 101
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    const/4 v5, 0x3

    if-ge v1, v5, :cond_4

    .line 106
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v6, 0x65

    if-eq v5, v6, :cond_3

    const/16 v6, 0x67

    if-eq v5, v6, :cond_3

    const/16 v6, 0x69

    if-eq v5, v6, :cond_3

    const/16 v6, 0x73

    if-eq v5, v6, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    add-int/2addr v1, v4

    .line 118
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 119
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    :cond_3
    const/4 v2, -0x1

    .line 110
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    add-int/2addr v1, v4

    .line 111
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 113
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->clearCachedSsData(I)V

    .line 114
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 124
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v1, v3, :cond_5

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    if-eqz v0, :cond_5

    .line 125
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->recoverUtProfileAfter404Retry()V

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 131
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    :goto_1
    return-void

    .line 79
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 80
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responsePutResult()V

    goto :goto_3

    .line 82
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 83
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetResult()V

    goto :goto_3

    .line 85
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v1, v3, :cond_a

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    if-eqz v0, :cond_a

    .line 86
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->recoverUtProfileAfter404Retry()V

    .line 88
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    :goto_3
    return-void
.end method

.method private handleResponseSd()Z
    .locals 5

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    .line 488
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    const-string v4, "Unknown access. mUsm.mPrevGetType: "

    if-eqz v2, :cond_3

    .line 489
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    const/16 v2, 0x68

    if-ne v1, v2, :cond_0

    .line 491
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x69

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 492
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    .line 493
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    goto :goto_0

    :cond_0
    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    .line 495
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x67

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 496
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    .line 497
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 499
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x65

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 500
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 501
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    goto :goto_0

    .line 503
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 504
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringRequestType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 505
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->completeGetSdByRetry()V

    goto :goto_0

    .line 507
    :cond_3
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    if-eqz v1, :cond_4

    .line 508
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->completeGetSdByRetry()V

    goto :goto_0

    .line 510
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 511
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringRequestType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 512
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->completeGetSdByRetry()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    return v3
.end method

.method private makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;
    .locals 2

    .line 639
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 641
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const-string/jumbo v1, "status"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 642
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 644
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 646
    :goto_0
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const-string v1, "condition"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 647
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertMediaTypeToSsClass(Ljava/util/List;)I

    move-result p1

    const-string/jumbo v0, "serviceClass"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;
    .locals 7

    .line 589
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 591
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 592
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const/4 v3, 0x1

    const-string/jumbo v4, "status"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 595
    :cond_0
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v4, "condition"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 600
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "ToA"

    if-eqz v2, :cond_1

    const/16 v2, 0x91

    .line 601
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x81

    .line 603
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    :goto_1
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 606
    sget-object v4, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    const/16 v6, 0x2b

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE_QATAR:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_3

    .line 607
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_3

    .line 608
    invoke-static {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeInternationalNumber(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v2

    .line 612
    :cond_3
    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_4

    .line 613
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    .line 614
    const-string v4, "+81"

    invoke-static {v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 618
    :cond_4
    const-string/jumbo v4, "number"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_5
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertMediaTypeToSsClass(Ljava/util/List;)I

    move-result p1

    .line 622
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/16 v4, 0xff

    const-string/jumbo v5, "serviceClass"

    if-ne v0, v2, :cond_6

    if-ne p1, v4, :cond_6

    .line 623
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 624
    :cond_6
    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->YOIGO_SPAIN:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_8

    :cond_7
    if-ne p1, v4, :cond_8

    const/16 p1, 0x31

    .line 626
    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 629
    :cond_8
    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 632
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz p0, :cond_9

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    if-eqz p0, :cond_9

    .line 633
    const-string p1, "NoReplyTimer"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    return-object v1
.end method

.method private recoverUtProfileAfter404Retry()V
    .locals 2

    .line 555
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v0, -0x1

    .line 556
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    return-void
.end method

.method private responseGetFromCache()V
    .locals 14

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_c

    const/16 v1, 0x66

    const/16 v2, 0x68

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    goto/16 :goto_8

    .line 323
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v4, v2, :cond_1

    .line 328
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    goto :goto_0

    .line 330
    :cond_1
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 333
    :goto_0
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    const/4 v6, 0x0

    const-string v7, "] "

    const-string v8, "GET RULE ID ["

    if-eqz v5, :cond_5

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->noMediaForCB:Z

    if-nez v1, :cond_5

    .line 334
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    array-length v3, v1

    move v5, v6

    :goto_1
    if-ge v5, v3, :cond_4

    aget-object v9, v1, v5

    .line 335
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v9, v10, :cond_2

    goto :goto_2

    .line 338
    :cond_2
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v4, v10, v9}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v10

    .line 339
    sget-object v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v12, v12, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v12, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    iget-object v9, v10, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 342
    invoke-direct {p0, v10}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v9

    .line 343
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 347
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 348
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v1

    .line 349
    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->LOG_TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 352
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v1

    .line 353
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 357
    :cond_5
    iget v1, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v1

    .line 358
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 360
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/16 v5, 0xa

    if-ne v3, v5, :cond_6

    .line 361
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->createRuleId(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 362
    :cond_6
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 363
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v1

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 368
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    array-length v3, v1

    move v5, v6

    :goto_4
    if-ge v5, v3, :cond_a

    aget-object v9, v1, v5

    .line 369
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v9, v10, :cond_8

    goto :goto_5

    .line 373
    :cond_8
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v4, v10, v9}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v10

    .line 374
    sget-object v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v12, v12, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v12, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 376
    iget-object v9, v10, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 377
    invoke-direct {p0, v10}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v9

    .line 378
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 386
    :cond_a
    :goto_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v4, 0x1

    if-ne v3, v2, :cond_b

    .line 387
    iput-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    goto :goto_7

    .line 389
    :cond_b
    iput-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    :goto_7
    const/4 v2, 0x5

    .line 391
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 392
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    new-array v1, v6, [Landroid/os/Bundle;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    goto :goto_8

    .line 319
    :cond_c
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->cfInfoFromCache()V

    :goto_8
    return-void
.end method

.method private responsePutResult()V
    .locals 10

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x6d

    const/16 v4, 0x9

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v2, v3, :cond_0

    .line 137
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string/jumbo v3, "ss_clir_pref"

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 140
    iget v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v3, v6, :cond_1

    .line 142
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 144
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v0

    .line 142
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->copyRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x69

    if-ne v2, v3, :cond_2

    .line 145
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetForAllCb:Z

    if-eqz v2, :cond_2

    .line 146
    iput-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetForAllCb:Z

    .line 147
    iput v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    const/16 v2, 0x67

    .line 148
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 149
    iput v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 150
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 156
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    if-nez v1, :cond_3

    .line 157
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    return-void

    .line 161
    :cond_3
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    const/4 v3, 0x6

    if-eqz v1, :cond_4

    .line 162
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    return-void

    .line 166
    :cond_4
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    if-eqz v1, :cond_8

    .line 167
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUsm.mProfile.condition : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v0, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v1, v6, :cond_7

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0xf

    .line 171
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v3, 0x3f9

    const-wide/16 v4, 0x7ef4

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v3, v2, :cond_6

    const/4 v2, 0x2

    .line 174
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 176
    :cond_6
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 169
    :cond_7
    :goto_1
    iput-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    .line 183
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    if-eqz v1, :cond_9

    .line 184
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 186
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    return-void

    .line 190
    :cond_9
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedFirstGet:Z

    if-eqz v1, :cond_a

    .line 191
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->clearCachedSsData(I)V

    .line 193
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 194
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    return-void
.end method

.method private sendHttp()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 521
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .line 0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 35
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResponseState::ProcessMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 37
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    const/16 v4, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0x64

    if-eq v1, v2, :cond_3

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v2

    .line 43
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetFromCache()V

    goto :goto_0

    .line 65
    :pswitch_2
    sget-object p1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v0, p1, :cond_0

    sget-object p1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    if-eqz p1, :cond_1

    .line 66
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    .line 67
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_1
    return v2

    .line 47
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    .line 48
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 49
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v1, v2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v4, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_0

    .line 39
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 40
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->handleHttpResult()V

    goto :goto_0

    .line 59
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 p1, 0x3f8

    invoke-virtual {p0, v4, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_0

    .line 56
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 62
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->disconnectPdn()V

    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public responseGetResult()V
    .locals 7

    .line 400
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;-><init>()V

    .line 402
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Print GET Result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-eq v3, v4, :cond_a

    const/16 v4, 0x66

    const/16 v6, 0x68

    if-eq v3, v4, :cond_7

    if-eq v3, v6, :cond_7

    const/16 v4, 0x6a

    if-eq v3, v4, :cond_6

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_4

    const/16 v4, 0x72

    if-eq v3, v4, :cond_2

    const/16 v0, 0x74

    if-eq v3, v0, :cond_0

    goto/16 :goto_0

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->handleResponseSd()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 481
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto/16 :goto_0

    .line 406
    :cond_2
    iget-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    if-eqz v3, :cond_3

    const/16 v0, 0x73

    .line 407
    iput v0, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 408
    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    .line 409
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 413
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallWaitingOrClip(Ljava/lang/String;)Z

    move-result v0

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x2

    .line 463
    new-array v1, v1, [I

    .line 464
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseClir(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v5

    const/4 v0, 0x4

    const/4 v2, 0x1

    .line 465
    aput v0, v1, v2

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 467
    aget v0, v1, v5

    if-eq v0, v2, :cond_5

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v3, "ss_clir_pref"

    invoke-virtual {v0, v2, v3, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v0

    aput v0, v1, v5

    .line 472
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 473
    const-string/jumbo v2, "queryClir"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 455
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallWaitingOrClip(Ljava/lang/String;)Z

    move-result v0

    .line 457
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v1, v0}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v0

    .line 458
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 459
    const-string v2, "imsSsInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 460
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto :goto_0

    .line 430
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallBarring(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v3, v6, :cond_8

    .line 433
    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 434
    iget-boolean v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x69

    .line 435
    iput v0, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 436
    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 437
    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    .line 438
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 442
    :cond_8
    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 443
    iget-boolean v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x67

    .line 444
    iput v0, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 445
    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 446
    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    .line 447
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 451
    :cond_9
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetFromCache()V

    goto :goto_0

    .line 417
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallForwarding(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 419
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    if-eqz v1, :cond_b

    .line 420
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x65

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 421
    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 422
    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 423
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 426
    :cond_b
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetFromCache()V

    :goto_0
    return-void
.end method
