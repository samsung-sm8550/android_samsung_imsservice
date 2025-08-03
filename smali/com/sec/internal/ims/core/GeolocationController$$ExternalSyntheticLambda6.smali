.class public final synthetic Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->$r8$lambda$byLpsFNxpJJK4-GSeLqVl3wrPM0(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
