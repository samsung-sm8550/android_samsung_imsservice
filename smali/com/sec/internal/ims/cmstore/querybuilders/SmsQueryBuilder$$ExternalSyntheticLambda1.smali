.class public final synthetic Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->$r8$lambda$qJy0QPepJk7mJM-APpoF914KMlY(Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method
