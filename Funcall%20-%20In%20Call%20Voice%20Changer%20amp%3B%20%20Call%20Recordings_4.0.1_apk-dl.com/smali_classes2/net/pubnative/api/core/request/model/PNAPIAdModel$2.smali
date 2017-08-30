.class Lnet/pubnative/api/core/request/model/PNAPIAdModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/URLDriller$Listener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$2;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onURLDrillerFail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$2;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->onPrepareClickURLFinish(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public onURLDrillerFinish(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel$2;->this$0:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->onPrepareClickURLFinish(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public onURLDrillerRedirect(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public onURLDrillerStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 434
    return-void
.end method
