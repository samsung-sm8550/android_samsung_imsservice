.class public Lcom/sec/internal/constants/ims/config/ConfigConstants$URL;
.super Ljava/lang/Object;
.source "ConfigConstants.java"


# static fields
.field public static final CONFIG_TEMPLATE:Ljava/lang/String; = "http://config.rcs.mnc<MNC>.mcc<MCC>.pub.3gppnetwork.org"

.field public static final INTERNAL_CONFIG_PROXY_AUTHORITY:Ljava/lang/String; = "http://127.0.0.1:1080/test/"

.field public static final INTERNAL_CONFIG_PROXY_TEMPLATE:Ljava/lang/String; = "http://localhost:1080/cookie/mnc<MNC>/mcc<MCC>/"

.field public static final MCC_PNAME:Ljava/lang/String; = "MCC"

.field public static final MCC_PVALUE:Ljava/lang/String; = "<MCC>"

.field public static final MNC_PNAME:Ljava/lang/String; = "MNC"

.field public static final MNC_PVALUE:Ljava/lang/String; = "<MNC>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
