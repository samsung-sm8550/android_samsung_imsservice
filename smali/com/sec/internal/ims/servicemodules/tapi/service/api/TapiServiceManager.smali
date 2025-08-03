.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "TapiServiceManager.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/api/interfaces/ITapiServiceManager;


# static fields
.field private static mCapabilityServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

.field private static mChatServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

.field private static mContactServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

.field private static mFileTransferingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

.field private static mFileUploadServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

.field private static mGeolocSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

.field private static mHistoryLogServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

.field private static mImageSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

.field private static mMultimediaSessionServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

.field private static mVideoSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 32
    const-class p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->createTapiServices()V

    return-void
.end method

.method public static getCapService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;
    .locals 1

    .line 259
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mCapabilityServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    return-object v0
.end method

.method public static getChatService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;
    .locals 1

    .line 231
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mChatServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    return-object v0
.end method

.method public static getContactService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;
    .locals 1

    .line 255
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContactServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    return-object v0
.end method

.method public static getFtService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;
    .locals 1

    .line 235
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileTransferingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    return-object v0
.end method

.method public static getGlsService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;
    .locals 1

    .line 251
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mGeolocSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    return-object v0
.end method

.method public static getHistoryService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;
    .locals 1

    .line 263
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mHistoryLogServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    return-object v0
.end method

.method public static getIshService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;
    .locals 1

    .line 243
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mImageSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    return-object v0
.end method

.method public static getMulSessionService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;
    .locals 1

    .line 267
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mMultimediaSessionServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    return-object v0
.end method

.method public static getVshService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;
    .locals 1

    .line 247
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mVideoSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    return-object v0
.end method

.method public static getfileUpService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;
    .locals 1

    .line 239
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileUploadServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

    return-object v0
.end method

.method public static isSupportTapi()Z
    .locals 1

    .line 84
    invoke-static {}, Lcom/sec/internal/ims/util/TapiServiceUtil;->isSupportTapi()Z

    move-result v0

    return v0
.end method

.method public static setmCapabilityServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;)V
    .locals 0

    .line 219
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mCapabilityServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    return-void
.end method

.method public static setmChatServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;)V
    .locals 0

    .line 191
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mChatServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    return-void
.end method

.method public static setmContactServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;)V
    .locals 0

    .line 215
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContactServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    return-void
.end method

.method public static setmFileTransferingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;)V
    .locals 0

    .line 195
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileTransferingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    return-void
.end method

.method public static setmFileUploadServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;)V
    .locals 0

    .line 199
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileUploadServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

    return-void
.end method

.method public static setmGeolocSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;)V
    .locals 0

    .line 207
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mGeolocSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    return-void
.end method

.method public static setmHistoryLogServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;)V
    .locals 0

    .line 227
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mHistoryLogServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    return-void
.end method

.method public static setmImageSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;)V
    .locals 0

    .line 203
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mImageSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    return-void
.end method

.method public static setmMultimediaSessionServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;)V
    .locals 0

    .line 223
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mMultimediaSessionServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    return-void
.end method

.method public static setmVideoSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;)V
    .locals 0

    .line 211
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mVideoSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    return-void
.end method


# virtual methods
.method public broadcastServiceUp()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "broadcastServiceUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->isSupportTapi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.action.SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public createTapiServices()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createTapiServices"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmFileTransferingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;)V

    .line 154
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmChatServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;)V

    .line 155
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmFileUploadServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;)V

    .line 158
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImageShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 160
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;)V

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmImageSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;)V

    .line 163
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getGlsModule()Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 165
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;)V

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmGeolocSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;)V

    .line 168
    :cond_2
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVideoShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 170
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;)V

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmVideoSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;)V

    .line 173
    :cond_3
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmContactServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;)V

    .line 174
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmCapabilityServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;)V

    .line 176
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSessionModule()Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 178
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)V

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmMultimediaSessionServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;)V

    .line 181
    :cond_4
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;-><init>()V

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmHistoryLogServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;)V

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 184
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->updateTapiSettings()V

    .line 187
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->broadcastServiceUp()V

    return-void
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 8

    .line 405
    const-string v6, "is"

    const-string/jumbo v7, "vs"

    const-string v0, "im"

    const-string/jumbo v1, "slm"

    const-string v2, "ft"

    const-string v3, "ft_http"

    const-string/jumbo v4, "options"

    const-string/jumbo v5, "presence"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyRegistrationStatusToTapiClient(ZI)V
    .locals 2

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyRegistrationStatusToTapiClient : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object p0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    .line 100
    sget-object p0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 102
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->isSupportTapi()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 103
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mChatServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    if-eqz p2, :cond_1

    .line 104
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 107
    :cond_1
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileTransferingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    if-eqz p2, :cond_2

    .line 108
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 111
    :cond_2
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileUploadServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

    if-eqz p2, :cond_3

    .line 112
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 115
    :cond_3
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mImageSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    if-eqz p2, :cond_4

    .line 116
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 121
    :cond_4
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mGeolocSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    if-eqz p2, :cond_5

    .line 122
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 125
    :cond_5
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mVideoSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    if-eqz p2, :cond_6

    .line 126
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 131
    :cond_6
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mCapabilityServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    if-eqz p2, :cond_7

    .line 132
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 135
    :cond_7
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mMultimediaSessionServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    if-eqz p2, :cond_8

    .line 136
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    :cond_8
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->notifyRegistrationStatusToTapiClient(ZI)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistered() services : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->updateSettings()V

    .line 70
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->updateTapiSettings()V

    .line 71
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->loadCCAndAC()V

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/util/PhoneUtils;->initialize()V

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->notifyRegistrationStatusToTapiClient(ZI)V

    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 2

    .line 386
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 387
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ServiceSwitch not updated for active data phoneId, return."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 390
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "rcs"

    invoke-static {p2, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 392
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitch active:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 395
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 396
    const-string/jumbo p2, "value"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string p2, "ServiceActivated"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
