.class public Lorg/xbill/DNS/MFRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "MFRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x5c92320eb5600ec9L


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
    new-instance p0, Lorg/xbill/DNS/MFRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/MFRecord;-><init>()V

    return-object p0
.end method
