.class public Lcom/sec/internal/extension/mvno/handler/BaseHandler;
.super Landroid/os/Handler;
.source "BaseHandler.java"

# interfaces
.implements Lcom/sec/internal/extension/mvno/handler/IBaseHandler;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseHandler"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sec/internal/extension/mvno/handler/BaseHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dispose(ILcom/sec/ims/util/SipError;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getOtaElement()Lcom/google/gson/JsonElement;
    .locals 0

    .line 35
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0
.end method

.method public init()V
    .locals 1

    .line 21
    sget-object p0, Lcom/sec/internal/extension/mvno/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "init"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public receivedImsOta(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
