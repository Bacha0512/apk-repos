.class public Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/api/layouts/PNAPILayoutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IDMap"
.end annotation


# instance fields
.field public banner:I

.field public callToAction:I

.field public description:I

.field public icon:I

.field public starRating:I

.field final synthetic this$0:Lnet/pubnative/api/layouts/PNAPILayoutView;

.field public title:I


# direct methods
.method public constructor <init>(Lnet/pubnative/api/layouts/PNAPILayoutView;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->this$0:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
