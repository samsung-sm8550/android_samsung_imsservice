.class public Lcom/sec/internal/ims/config/exception/EmptyBodyAndCookieException;
.super Lcom/sec/internal/ims/config/exception/UnknownStatusException;
.source "EmptyBodyAndCookieException.java"


# static fields
.field private static final serialVersionUID:J = 0x70faaddd6bacd12dL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->message:Ljava/lang/String;

    return-object p0
.end method
