.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/DefaultNsdsOperation;
.super Ljava/lang/Object;
.source "DefaultNsdsOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DefaultNsdsOperation"


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

.method public static getOperation(IIILandroid/os/Bundle;)I
    .locals 5

    .line 18
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/DefaultNsdsOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperation: eventType-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " prevOp-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 24
    const-string v1, "loc_and_tc_status"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/16 v1, 0x3e8

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-ne p1, v2, :cond_5

    if-eq p0, v3, :cond_4

    const/4 p1, 0x7

    if-eq p0, p1, :cond_3

    const/16 p1, 0xb

    if-eq p0, p1, :cond_2

    const/16 p2, 0x13

    if-eq p0, p2, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v2, p1

    goto :goto_1

    :pswitch_1
    const/16 v2, 0xa

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x9

    goto :goto_1

    :cond_1
    const/16 v2, 0xf

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-ne p2, v1, :cond_8

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    if-eq p1, v3, :cond_7

    if-eq p1, v4, :cond_6

    goto :goto_1

    .line 65
    :cond_6
    invoke-static {p0, p2, p3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/DefaultNsdsOperation;->getOperationAfterLocAndTcCheck(IIZ)I

    move-result v2

    goto :goto_1

    :cond_7
    if-ne p2, v1, :cond_8

    .line 61
    const-string p0, "getOperation(): BULK_ENTITLEMENT_CHECK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    :cond_8
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getOperationAfterLocAndTcCheck(IIZ)I
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_1

    if-nez p2, :cond_1

    const/16 p0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method
