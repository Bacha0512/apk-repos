.class public Lorg/abtollc/jni/SWIGTYPE_p_pjsip_media_type;
.super Ljava/lang/Object;
.source "SWIGTYPE_p_pjsip_media_type.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/abtollc/jni/SWIGTYPE_p_pjsip_media_type;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1
    .param p1, "cPtr"    # J
    .param p3, "futureUse"    # Z

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lorg/abtollc/jni/SWIGTYPE_p_pjsip_media_type;->swigCPtr:J

    .line 16
    return-void
.end method

.method protected static getCPtr(Lorg/abtollc/jni/SWIGTYPE_p_pjsip_media_type;)J
    .locals 2
    .param p0, "obj"    # Lorg/abtollc/jni/SWIGTYPE_p_pjsip_media_type;

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/abtollc/jni/SWIGTYPE_p_pjsip_media_type;->swigCPtr:J

    goto :goto_0
.end method
