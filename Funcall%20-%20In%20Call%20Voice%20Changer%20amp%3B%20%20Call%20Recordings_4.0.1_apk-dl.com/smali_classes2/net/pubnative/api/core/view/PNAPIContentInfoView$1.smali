.class Lnet/pubnative/api/core/view/PNAPIContentInfoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/view/PNAPIContentInfoView;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/view/PNAPIContentInfoView;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView$1;->this$0:Lnet/pubnative/api/core/view/PNAPIContentInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView$1;->this$0:Lnet/pubnative/api/core/view/PNAPIContentInfoView;

    invoke-virtual {v0}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->closeLayout()V

    .line 34
    return-void
.end method
