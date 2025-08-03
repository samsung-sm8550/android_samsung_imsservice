.class abstract Landroidx/profileinstaller/ProfileInstallerInitializer$Choreographer16Impl;
.super Ljava/lang/Object;
.source "ProfileInstallerInitializer.java"


# direct methods
.method public static synthetic $r8$lambda$tNoFoacLpIq9EDLF7sdX19s0Qbs(Ljava/lang/Runnable;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/profileinstaller/ProfileInstallerInitializer$Choreographer16Impl;->lambda$postFrameCallback$0(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static synthetic lambda$postFrameCallback$0(Ljava/lang/Runnable;J)V
    .locals 0

    .line 161
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static postFrameCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 161
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Landroidx/profileinstaller/ProfileInstallerInitializer$Choreographer16Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/profileinstaller/ProfileInstallerInitializer$Choreographer16Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
