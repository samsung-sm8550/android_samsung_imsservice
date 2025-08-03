.class public final synthetic Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda3;->f$0:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda3;->f$0:Landroid/content/ContentValues;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {p0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->$r8$lambda$3DtEdxi1bojJ2PLcjkV2E856MEA(Landroid/content/ContentValues;Landroid/content/SharedPreferences;)V

    return-void
.end method
