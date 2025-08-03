.class public final synthetic Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/httpclient/HttpRequestParams;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->$r8$lambda$_2Bka5HYXYYsF_Kgd56Esz42lcA(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
