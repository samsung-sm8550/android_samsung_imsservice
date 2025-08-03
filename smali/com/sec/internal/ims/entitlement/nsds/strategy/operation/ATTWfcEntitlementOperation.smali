.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;
.super Ljava/lang/Object;
.source "ATTWfcEntitlementOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ATTWfcEntitlementOperation"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInitialOperation(II)I
    .locals 4

    .line 0
    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    const/4 v1, 0x2

    if-eq p0, v0, :cond_4

    const/16 v0, 0x13

    const/16 v2, 0xf

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/16 v3, 0xc

    if-eq p0, v3, :cond_4

    const/16 p1, 0xe

    if-eq p0, p1, :cond_1

    if-eq p0, v2, :cond_6

    :cond_0
    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v0, 0xa

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    :cond_6
    :goto_1
    return v0
.end method

.method protected static getNextOperation(IIIZZLjava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 p5, 0x3

    if-eq p0, p5, :cond_2

    const/4 p5, 0x4

    if-eq p0, p5, :cond_1

    const/16 p5, 0x10

    if-eq p0, p5, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterLocAndTcCheckforAutoOn(IIZZ)I

    move-result p0

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterPushTokenRegistration(II)I

    move-result p0

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterLocAndTcCheck(IIZZ)I

    move-result p0

    goto :goto_0

    .line 89
    :cond_3
    invoke-static {p1, p2, p5, p4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterEntitlementCheck(IILjava/lang/String;Z)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getOperation(IIILandroid/os/Bundle;)I
    .locals 7

    .line 17
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperation: eventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " prevOp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 24
    const-string v0, "loc_and_tc_status"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 25
    const-string/jumbo v1, "svc_prov_status"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 26
    const-string v2, "e911_aid_exp"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move-object v6, p3

    move v4, v0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 p3, 0x0

    move-object v6, p3

    move v4, v0

    move v5, v4

    :goto_0
    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 31
    invoke-static {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getInitialOperation(II)I

    move-result p0

    goto :goto_1

    :cond_1
    move v1, p1

    move v2, p0

    move v3, p2

    .line 33
    invoke-static/range {v1 .. v6}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getNextOperation(IIIZZLjava/lang/String;)I

    move-result p0

    :goto_1
    return p0
.end method

.method protected static getOperationAfterEntitlementCheck(IILjava/lang/String;Z)I
    .locals 5

    const/16 v0, 0x418

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/16 v3, 0x3e8

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    if-ne p1, v3, :cond_3

    :goto_0
    move v1, v2

    goto :goto_2

    :pswitch_2
    if-ne p1, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x5

    goto :goto_2

    :pswitch_3
    if-eq p1, v3, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 102
    :pswitch_4
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ATT_AutoOn] getOperationAfterEntitlementCheck responseCode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",onSvcProv:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_1

    .line 104
    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/util/E911AidValidator;->validate(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 106
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkWFCAutoOnEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 v1, 0x13

    if-ne p1, v0, :cond_2

    if-nez p3, :cond_3

    goto :goto_2

    :cond_2
    const/16 p0, 0x427

    if-ne p1, p0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, -0x1

    :cond_4
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected static getOperationAfterLocAndTcCheck(IIZZ)I
    .locals 2

    .line 0
    const/4 v0, 0x2

    const/16 v1, 0x3e8

    if-eq p0, v0, :cond_1

    const/4 p2, 0x5

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_3

    const/16 p0, 0xd

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    const/16 p0, 0x8

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static getOperationAfterLocAndTcCheckforAutoOn(IIZZ)I
    .locals 3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATT_AutoOn] getOperationAfterLocAndTcCheckforAutoOn responseCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",onSvcProv:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_4

    const/16 p0, 0x418

    if-ne p1, p0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    const/16 p0, 0x427

    if-ne p1, p0, :cond_3

    :cond_2
    const/16 p0, 0x12

    goto :goto_1

    :cond_3
    const/16 p0, 0x11

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    .line 193
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",locAndTcStatus:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method protected static getOperationAfterPushTokenRegistration(II)I
    .locals 1

    .line 0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
