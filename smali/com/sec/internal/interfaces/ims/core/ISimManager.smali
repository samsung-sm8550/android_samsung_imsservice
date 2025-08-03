.class public interface abstract Lcom/sec/internal/interfaces/ims/core/ISimManager;
.super Ljava/lang/Object;
.source "ISimManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# static fields
.field public static final IMSSWITCH_DEFAULT:I = 0x2

.field public static final IMSSWITCH_JSON:I = 0x4

.field public static final IMSSWITCH_NOT_EXIST:I = -0x1

.field public static final IMSSWITCH_NOT_USE:I = 0x0

.field public static final IMSSWITCH_OFF:I = 0x5

.field public static final IMSSWITCH_SIMMOBILITY:I = 0x3

.field public static final KEY_GLOBALGC_ENABLED:Ljava/lang/String; = "globalgcenabled"

.field public static final KEY_HAS_SIM:Ljava/lang/String; = "hassim"

.field public static final KEY_HOSTED_ROAMING:Ljava/lang/String; = "hostedroaming"

.field public static final KEY_IMSI:Ljava/lang/String; = "imsi"

.field public static final KEY_IMSSWITCH_TYPE:Ljava/lang/String; = "imsSwitchType"

.field public static final KEY_MNO_NAME:Ljava/lang/String; = "mnoname"

.field public static final KEY_MVNO_NAME:Ljava/lang/String; = "mvnoname"

.field public static final KEY_NW_NAME:Ljava/lang/String; = "NetworkName"

.field public static final KEY_SIMMO_TYPE:Ljava/lang/String; = "simMoType"

.field public static final SIMMOBILITY_NONE:I = 0x0

.field public static final SIMMOBILITY_RCS:I = 0x2

.field public static final SIMMOBILITY_VOLTE:I = 0x1

.field public static final SIMMOBILITY_VOLTE_RCS:I = 0x3


# virtual methods
.method public abstract deRegisterSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
.end method

.method public abstract deregisterForSimReady(Landroid/os/Handler;)V
.end method

.method public abstract deregisterForSimRefresh(Landroid/os/Handler;)V
.end method

.method public abstract deregisterForSimRemoved(Landroid/os/Handler;)V
.end method

.method public abstract deregisterForSimStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract dump()V
.end method

.method public abstract getDerivedImpi()Ljava/lang/String;
.end method

.method public abstract getDerivedImpu()Ljava/lang/String;
.end method

.method public abstract getDerivedImpuFromMsisdn()Ljava/lang/String;
.end method

.method public abstract getDevMno()Lcom/sec/internal/constants/Mno;
.end method

.method public abstract getEmergencyImpu()Ljava/lang/String;
.end method

.method public abstract getGid1()Ljava/lang/String;
.end method

.method public abstract getHighestPriorityEhplmn()Ljava/lang/String;
.end method

.method public abstract getImpi()Ljava/lang/String;
.end method

.method public abstract getImpuFromSim()Ljava/lang/String;
.end method

.method public abstract getImsi()Ljava/lang/String;
.end method

.method public abstract getImsiFromImpi()Ljava/lang/String;
.end method

.method public abstract getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getLine1Number(I)Ljava/lang/String;
.end method

.method public abstract getMnoFromNetworkPlmn(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;
.end method

.method public abstract getMnoInfo()Landroid/content/ContentValues;
.end method

.method public abstract getMsisdn()Ljava/lang/String;
.end method

.method public abstract getNetMno()Lcom/sec/internal/constants/Mno;
.end method

.method public abstract getNetworkNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSimCountryIso()Ljava/lang/String;
.end method

.method public abstract getSimMno()Lcom/sec/internal/constants/Mno;
.end method

.method public abstract getSimMnoName()Ljava/lang/String;
.end method

.method public abstract getSimOperator()Ljava/lang/String;
.end method

.method public abstract getSimOperatorFromImpi()Ljava/lang/String;
.end method

.method public abstract getSimSerialNumber()Ljava/lang/String;
.end method

.method public abstract getSimSlotIndex()I
.end method

.method public abstract getSimState()I
.end method

.method public abstract getSubscriptionId()I
.end method

.method public abstract getSubscriptionIdInternal()I
.end method

.method public abstract hasIsim()Z
.end method

.method public abstract hasNoSim()Z
.end method

.method public abstract hasVsim()Z
.end method

.method public abstract isEsim()Z
.end method

.method public abstract isGBASupported()Z
.end method

.method public abstract isISimDataValid()Z
.end method

.method public abstract isLabSimCard()Z
.end method

.method public abstract isOutBoundSIM()Z
.end method

.method public abstract isSimAvailable()Z
.end method

.method public abstract isSimLoaded()Z
.end method

.method public abstract onImsSwitchUpdated(I)V
.end method

.method public abstract registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUiccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
.end method

.method public abstract requestIsimAuthentication(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSoftphoneAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
.end method

.method public abstract setIsimLoaded()V
.end method

.method public abstract setSimMno(Lcom/sec/internal/constants/Mno;Z)V
.end method

.method public abstract setSimRefreshed()V
.end method

.method public abstract setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V
.end method

.method public abstract updateMno(Landroid/content/ContentValues;)V
.end method
