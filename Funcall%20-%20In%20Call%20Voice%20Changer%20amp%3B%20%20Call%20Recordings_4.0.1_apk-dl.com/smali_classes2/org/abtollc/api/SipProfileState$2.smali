.class final Lorg/abtollc/api/SipProfileState$2;
.super Ljava/lang/Object;
.source "SipProfileState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/api/SipProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/abtollc/api/SipProfileState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 517
    check-cast p1, Lorg/abtollc/api/SipProfileState;

    check-cast p2, Lorg/abtollc/api/SipProfileState;

    invoke-virtual {p0, p1, p2}, Lorg/abtollc/api/SipProfileState$2;->compare(Lorg/abtollc/api/SipProfileState;Lorg/abtollc/api/SipProfileState;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/abtollc/api/SipProfileState;Lorg/abtollc/api/SipProfileState;)I
    .locals 3
    .param p1, "infos1"    # Lorg/abtollc/api/SipProfileState;
    .param p2, "infos2"    # Lorg/abtollc/api/SipProfileState;

    .prologue
    .line 519
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 521
    invoke-virtual {p1}, Lorg/abtollc/api/SipProfileState;->getPriority()I

    move-result v0

    .line 522
    .local v0, "c1":I
    invoke-virtual {p2}, Lorg/abtollc/api/SipProfileState;->getPriority()I

    move-result v1

    .line 524
    .local v1, "c2":I
    if-le v0, v1, :cond_0

    .line 525
    const/4 v2, 0x1

    .line 532
    .end local v0    # "c1":I
    .end local v1    # "c2":I
    :goto_0
    return v2

    .line 527
    .restart local v0    # "c1":I
    .restart local v1    # "c2":I
    :cond_0
    if-ge v0, v1, :cond_1

    .line 528
    const/4 v2, -0x1

    goto :goto_0

    .line 532
    .end local v0    # "c1":I
    .end local v1    # "c2":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
