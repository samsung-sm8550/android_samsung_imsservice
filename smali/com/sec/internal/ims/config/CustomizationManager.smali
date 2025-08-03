.class public Lcom/sec/internal/ims/config/CustomizationManager;
.super Ljava/lang/Object;
.source "CustomizationManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CustomizationManager"


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

.method public static getConfigManager(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/config/ConfigModule;IZ)Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    .locals 7

    .line 44
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    const/4 v0, 0x0

    .line 45
    invoke-static {p3, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 48
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "get config from local file."

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 51
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "get config from SDcard."

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 55
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",RCSP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x13010000

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 58
    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WorkflowChn"

    const-string v2, "WorkflowRjil"

    if-eqz v0, :cond_7

    .line 59
    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v3, "jibe"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p4, :cond_2

    .line 62
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowJibe"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 64
    :cond_2
    const-string/jumbo p4, "sec"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 65
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowSec"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 68
    :cond_3
    sget-object p4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 69
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowVzw"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 71
    :cond_4
    sget-object p4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 72
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 74
    :cond_5
    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 75
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 78
    :cond_6
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowUp"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 84
    :cond_7
    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 85
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 89
    :cond_8
    sget-object p4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 90
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 94
    :cond_9
    sget-object p4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 95
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 96
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Use local config for SoftPhone"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 99
    :cond_a
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowAtt"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 104
    :cond_b
    sget-object p4, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 105
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowPrimaryDevice for Telstra"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceTelstra;

    invoke-direct {v5, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceTelstra;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;I)V

    return-object p4

    .line 110
    :cond_c
    sget-object p4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 111
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowTmo"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 115
    :cond_d
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowPrimaryDevice"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;

    invoke-direct {v5, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;I)V

    return-object p4
.end method
