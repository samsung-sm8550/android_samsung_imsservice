.class public Lorg/xbill/DNS/MDRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "MDRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x491ed12ca5f240faL


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/xbill/DNS/SingleNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 20
    new-instance p0, Lorg/xbill/DNS/MDRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/MDRecord;-><init>()V

    return-object p0
.end method
