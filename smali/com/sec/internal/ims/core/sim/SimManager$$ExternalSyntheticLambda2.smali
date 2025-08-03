.class public final synthetic Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentValues;

.field public final synthetic f$1:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentValues;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda2;->f$0:Landroid/content/ContentValues;

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda2;->f$1:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda2;->f$0:Landroid/content/ContentValues;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda2;->f$1:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->$r8$lambda$Jr2K7WnOmHGiUmLqnDAvKk1iLnk(Landroid/content/ContentValues;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
