.class public interface abstract Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.super Ljava/lang/Object;
.source "WorkflowBase.java"


# static fields
.field public static final AUTHORIZE:I = 0x4

.field public static final FETCH_HTTP:I = 0x2

.field public static final FETCH_HTTPS:I = 0x3

.field public static final FETCH_OTP:I = 0x5

.field public static final FINISH:I = 0x8

.field public static final INITIALIZE:I = 0x1

.field public static final PARSE:I = 0x6

.field public static final STORE:I = 0x7


# virtual methods
.method public abstract run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
