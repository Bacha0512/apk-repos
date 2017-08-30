.class Lnet/pubnative/api/core/request/model/PNAPIAdModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$1;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 357
    check-cast p1, Lnet/pubnative/api/core/view/PNAPIContentInfoView;

    invoke-virtual {p1}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->openLayout()V

    .line 358
    return-void
.end method
