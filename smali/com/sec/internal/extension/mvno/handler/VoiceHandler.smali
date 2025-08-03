.class public Lcom/sec/internal/extension/mvno/handler/VoiceHandler;
.super Lcom/sec/internal/extension/mvno/handler/BaseHandler;
.source "VoiceHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VoiceHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/sec/internal/extension/mvno/handler/BaseHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispose(ILcom/sec/ims/util/SipError;)Z
    .locals 0

    .line 15
    sget-object p0, Lcom/sec/internal/extension/mvno/handler/VoiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "dispose"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    const/16 p1, 0x194

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
