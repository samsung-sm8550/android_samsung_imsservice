.class public Lcom/sec/internal/ims/core/cmc/CmcSettingManagerFactory;
.super Ljava/lang/Object;
.source "CmcSettingManagerFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSettingManagerFactory"


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

.method public static createCmcSettingManager(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;
    .locals 3

    .line 10
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcConstants;->IS_TEST_MODE:Z

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cmc Test Mode Enabled: LINE_ID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_LINEID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] PD_DEVICEID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_PD_DEVICEID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] SD_DEVICEID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_SD_DEVICEID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerTestWrapper;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerTestWrapper;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    return-object v0
.end method
