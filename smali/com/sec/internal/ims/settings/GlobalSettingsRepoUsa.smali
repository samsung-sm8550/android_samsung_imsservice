.class public Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;
.super Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
.source "GlobalSettingsRepoUsa.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected needResetVolteAsDefault(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    if-eq p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
