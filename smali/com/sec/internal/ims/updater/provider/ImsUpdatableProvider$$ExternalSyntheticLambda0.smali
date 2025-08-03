.class public final synthetic Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentValues;

.field public final synthetic f$1:Landroid/database/MatrixCursor$RowBuilder;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentValues;Landroid/database/MatrixCursor$RowBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$$ExternalSyntheticLambda0;->f$0:Landroid/content/ContentValues;

    iput-object p2, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$$ExternalSyntheticLambda0;->f$1:Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$$ExternalSyntheticLambda0;->f$0:Landroid/content/ContentValues;

    iget-object p0, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$$ExternalSyntheticLambda0;->f$1:Landroid/database/MatrixCursor$RowBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->$r8$lambda$8IBQb2HkGVMDsLACJ0wUhYGJG7k(Landroid/content/ContentValues;Landroid/database/MatrixCursor$RowBuilder;Ljava/lang/String;)V

    return-void
.end method
