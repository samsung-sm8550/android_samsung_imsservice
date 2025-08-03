.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$BUILD;
.super Ljava/lang/Object;
.source "McsConstants.java"


# static fields
.field public static final TERMINAL_SW_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
