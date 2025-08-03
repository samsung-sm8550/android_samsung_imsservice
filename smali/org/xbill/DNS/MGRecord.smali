.class public Lorg/xbill/DNS/MGRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "MGRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x373bff6faf8c97a6L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/SingleNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 19
    new-instance p0, Lorg/xbill/DNS/MGRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/MGRecord;-><init>()V

    return-object p0
.end method
