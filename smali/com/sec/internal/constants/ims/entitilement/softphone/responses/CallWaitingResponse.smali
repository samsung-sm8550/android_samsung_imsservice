.class public Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;
.super Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;
.source "CallWaitingResponse.java"


# instance fields
.field public mActive:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "@active"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;-><init>()V

    return-void
.end method
