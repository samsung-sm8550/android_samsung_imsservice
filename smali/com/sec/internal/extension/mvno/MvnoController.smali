.class public Lcom/sec/internal/extension/mvno/MvnoController;
.super Landroid/os/Handler;
.source "MvnoController.java"

# interfaces
.implements Lcom/sec/internal/extension/mvno/IMvnoController;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MvnoController"

.field private static final OTA_UPDATE_URI:I = 0x64

.field public static final TS32_DEFAULT:Ljava/lang/String; = "TS32_DEFAULT"

.field private static final mFeatureEnabled:Z = true


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;",
            "Lcom/sec/internal/extension/mvno/handler/IBaseHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIsNonVerifiedMnoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedUpdateGlobal:[Z

.field private mProfileManager:Lcom/sec/internal/extension/mvno/profile/ProfileManager;

.field private mReadyProfile:Z


# direct methods
.method public static synthetic $r8$lambda$LzmEv3lZdT3otwuKXZ-P0vmAPww(Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;Lcom/sec/internal/extension/mvno/handler/IBaseHandler;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/extension/mvno/MvnoController;->lambda$initSequentially$0(Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;Lcom/sec/internal/extension/mvno/handler/IBaseHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mProfileManager:Lcom/sec/internal/extension/mvno/profile/ProfileManager;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mReadyProfile:Z

    const/4 p1, 0x2

    .line 38
    new-array p1, p1, [Z

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mNeedUpdateGlobal:[Z

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mHandlerMap:Ljava/util/HashMap;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mKeyMap:Ljava/util/HashMap;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mIsNonVerifiedMnoMap:Ljava/util/HashMap;

    .line 46
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mContext:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private static synthetic lambda$initSequentially$0(Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;Lcom/sec/internal/extension/mvno/handler/IBaseHandler;)V
    .locals 0

    .line 57
    invoke-interface {p1}, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;->init()V

    return-void
.end method

.method private updateUri()V
    .locals 7

    .line 217
    sget-object v0, Lcom/sec/internal/extension/mvno/MvnoController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUri"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v0, "imsswitchreset"

    const-string/jumbo v1, "profile/reset"

    const-string v2, "global/reset"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 223
    aget-object v4, v0, v3

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "com.sec.ims.settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 225
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 226
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "cp_ota"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 228
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public convertMnoName(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 145
    const-string v0, "TS32_DEFAULT"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 147
    :goto_0
    iget-object p3, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_1

    move-object v2, p2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move p4, v0

    .line 153
    :goto_2
    iget-object p3, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mIsNonVerifiedMnoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object p3, Lcom/sec/internal/extension/mvno/MvnoController;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mnoName: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isNonVerifiedMno: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mIsNonVerifiedMnoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object p2
.end method

.method public getFeatureEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getFeatureEnabled(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 83
    const-string p0, "TS32_DEFAULT"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getOtaElement()Lcom/google/gson/JsonElement;
    .locals 2

    .line 205
    sget-object v0, Lcom/sec/internal/extension/mvno/MvnoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getOtaElement"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-boolean v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mReadyProfile:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mHandlerMap:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->CONFIG:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;

    if-eqz p0, :cond_1

    .line 211
    invoke-interface {p0}, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;->getOtaElement()Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getVoltePassKey(I)Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 65
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/extension/mvno/MvnoController;->updateUri()V

    :goto_0
    return-void
.end method

.method public initSequentially()V
    .locals 4

    .line 51
    sget-object v0, Lcom/sec/internal/extension/mvno/MvnoController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initSequentially"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lcom/sec/internal/extension/mvno/profile/ProfileManager;

    iget-object v1, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/extension/mvno/profile/ProfileManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mProfileManager:Lcom/sec/internal/extension/mvno/profile/ProfileManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mHandlerMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->VOICE:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    new-instance v2, Lcom/sec/internal/extension/mvno/handler/VoiceHandler;

    iget-object v3, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/internal/extension/mvno/handler/VoiceHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mHandlerMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->REGI:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    new-instance v2, Lcom/sec/internal/extension/mvno/handler/RegiHandler;

    iget-object v3, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/internal/extension/mvno/handler/RegiHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mHandlerMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->CONFIG:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    new-instance v2, Lcom/sec/internal/extension/mvno/handler/ConfigHandler;

    iget-object v3, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/internal/extension/mvno/handler/ConfigHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mHandlerMap:Ljava/util/HashMap;

    new-instance v1, Lcom/sec/internal/extension/mvno/MvnoController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/extension/mvno/MvnoController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 58
    iget-object v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mIsNonVerifiedMnoMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mIsNonVerifiedMnoMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iput-boolean v1, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mReadyProfile:Z

    return-void
.end method

.method public isMatchedTs32Profile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mReadyProfile:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 174
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mProfileManager:Lcom/sec/internal/extension/mvno/profile/ProfileManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/extension/mvno/profile/ProfileManager;->isMatchedTs32Profile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isNonVerifiedMno(I)Z
    .locals 3

    .line 184
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mIsNonVerifiedMnoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 185
    sget-object v0, Lcom/sec/internal/extension/mvno/MvnoController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNonVerifiedMno: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public isUpdateGlobal(I)Z
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mNeedUpdateGlobal:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public needUpdateGlobal(IZ)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mNeedUpdateGlobal:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public onSipError(ILcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Lcom/sec/ims/util/SipError;Z)Z
    .locals 3

    .line 89
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p2

    .line 90
    sget-object v0, Lcom/sec/internal/extension/mvno/MvnoController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "profileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isExistMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    const-string v0, "TS32_DEFAULT"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_0
    const-string p2, "mmtel"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 96
    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mHandlerMap:Ljava/util/HashMap;

    sget-object p2, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->VOICE:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;

    invoke-interface {p0, p1, p4}, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;->dispose(ILcom/sec/ims/util/SipError;)Z

    move-result p0

    goto :goto_0

    .line 100
    :cond_1
    const-string/jumbo p2, "volte"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p5, :cond_2

    const/4 p0, 0x1

    return p0

    .line 104
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mHandlerMap:Ljava/util/HashMap;

    sget-object p2, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->REGI:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;

    invoke-interface {p0, p1, p4}, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;->dispose(ILcom/sec/ims/util/SipError;)Z

    move-result p0

    goto :goto_0

    .line 106
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mHandlerMap:Ljava/util/HashMap;

    sget-object p2, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->CONFIG:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;

    invoke-interface {p0, p1, p4}, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;->dispose(ILcom/sec/ims/util/SipError;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public receivedImsOta(Ljava/lang/String;)V
    .locals 2

    .line 193
    iget-boolean v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mReadyProfile:Z

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mHandlerMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;->CONFIG:Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;

    if-eqz v0, :cond_1

    .line 198
    invoke-interface {v0, p1}, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;->receivedImsOta(Ljava/lang/String;)V

    const/16 p1, 0x64

    const-wide/16 v0, 0x64

    .line 199
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public reset(I)V
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mIsNonVerifiedMnoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSimInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mProfileManager:Lcom/sec/internal/extension/mvno/profile/ProfileManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/extension/mvno/profile/ProfileManager;->setSimInfo(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateGlobal(ILcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mProfileManager:Lcom/sec/internal/extension/mvno/profile/ProfileManager;

    invoke-virtual {p0}, Lcom/sec/internal/extension/mvno/MvnoController;->getOtaElement()Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sec/internal/extension/mvno/profile/ProfileManager;->updateGlobal(ILcom/google/gson/JsonElement;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public updateProfile(ILcom/sec/ims/settings/ImsProfile;Ljava/lang/String;)V
    .locals 2

    .line 113
    sget-object v0, Lcom/sec/internal/extension/mvno/MvnoController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateProfile"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    iget-boolean v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mReadyProfile:Z

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    const-string v0, "mmtel"

    invoke-virtual {p2, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mmtel-video"

    .line 118
    invoke-virtual {p2, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/extension/mvno/MvnoController;->mProfileManager:Lcom/sec/internal/extension/mvno/profile/ProfileManager;

    invoke-virtual {p0}, Lcom/sec/internal/extension/mvno/MvnoController;->getOtaElement()Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sec/internal/extension/mvno/profile/ProfileManager;->updateProfile(ILcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method
