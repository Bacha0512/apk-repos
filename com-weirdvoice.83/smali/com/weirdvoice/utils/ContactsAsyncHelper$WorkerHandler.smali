.class Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/utils/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/utils/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/utils/ContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/weirdvoice/utils/ContactsAsyncHelper;

    .line 105
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;

    .line 110
    .local v5, "args":Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;
    const/16 v17, 0x0

    .line 111
    .local v17, "uri":Landroid/net/Uri;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 112
    iget-object v0, v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f0b007f

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/weirdvoice/utils/ContactsAsyncHelper$PhotoViewTag;

    .line 113
    .local v14, "photoTag":Lcom/weirdvoice/utils/ContactsAsyncHelper$PhotoViewTag;
    if-eqz v14, :cond_2

    iget-object v0, v14, Lcom/weirdvoice/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 114
    iget-object v0, v14, Lcom/weirdvoice/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 115
    const/4 v10, 0x0

    .line 116
    .local v10, "hiRes":Z
    const-string v18, "hiRes"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 117
    .local v13, "p":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 118
    const/4 v10, 0x1

    .line 120
    :cond_0
    const-string v18, "ContactsAsyncHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "get : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v11, 0x0

    .line 122
    .local v11, "img":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/weirdvoice/utils/ContactsAsyncHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 123
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/weirdvoice/utils/ContactsAsyncHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v11, v0

    .line 122
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-nez v11, :cond_1

    .line 126
    # getter for: Lcom/weirdvoice/utils/ContactsAsyncHelper;->contactsWrapper:Lcom/weirdvoice/utils/contacts/ContactsWrapper;
    invoke-static {}, Lcom/weirdvoice/utils/ContactsAsyncHelper;->access$0()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v18

    iget-object v0, v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 127
    iget v0, v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 126
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/weirdvoice/utils/ContactsAsyncHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 129
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/weirdvoice/utils/ContactsAsyncHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    :cond_1
    if-eqz v11, :cond_3

    .line 133
    iput-object v11, v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .line 193
    .end local v10    # "hiRes":Z
    .end local v11    # "img":Landroid/graphics/Bitmap;
    .end local v13    # "p":Ljava/lang/String;
    .end local v14    # "photoTag":Lcom/weirdvoice/utils/ContactsAsyncHelper$PhotoViewTag;
    :cond_2
    :goto_0
    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;->loadedUri:Landroid/net/Uri;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/weirdvoice/utils/ContactsAsyncHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/weirdvoice/utils/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 197
    .local v15, "reply":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 198
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 200
    return-void

    .line 122
    .end local v15    # "reply":Landroid/os/Message;
    .restart local v10    # "hiRes":Z
    .restart local v11    # "img":Landroid/graphics/Bitmap;
    .restart local v13    # "p":Ljava/lang/String;
    .restart local v14    # "photoTag":Lcom/weirdvoice/utils/ContactsAsyncHelper$PhotoViewTag;
    :catchall_0
    move-exception v18

    :try_start_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 128
    :catchall_1
    move-exception v18

    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v18

    .line 135
    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 138
    .end local v10    # "hiRes":Z
    .end local v11    # "img":Landroid/graphics/Bitmap;
    .end local v13    # "p":Ljava/lang/String;
    .end local v14    # "photoTag":Lcom/weirdvoice/utils/ContactsAsyncHelper$PhotoViewTag;
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 139
    :cond_5
    iget-object v0, v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f0b007f

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/weirdvoice/utils/ContactsAsyncHelper$PhotoViewTag;

    .line 140
    .restart local v14    # "photoTag":Lcom/weirdvoice/utils/ContactsAsyncHelper$PhotoViewTag;
    if-eqz v14, :cond_2

    iget-object v0, v14, Lcom/weirdvoice/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 141
    iget-object v0, v14, Lcom/weirdvoice/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 142
    const-string v18, "ContactsAsyncHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "get : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v11, 0x0

    .line 146
    .restart local v11    # "img":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/weirdvoice/utils/ContactsAsyncHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 147
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/weirdvoice/utils/ContactsAsyncHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v11, v0

    .line 146
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 149
    if-nez v11, :cond_6

    .line 151
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 154
    const/16 v18, 0x4000

    :try_start_5
    move/from16 v0, v18

    new-array v8, v0, [B

    .line 155
    .local v8, "buffer":[B
    iget-object v0, v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 157
    .local v12, "is":Ljava/io/InputStream;
    if-eqz v12, :cond_6

    .line 158
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 161
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_6
    invoke-virtual {v12, v8}, Ljava/io/InputStream;->read([B)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v16

    .local v16, "size":I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 165
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 167
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 168
    .local v7, "boasBytes":[B
    const/16 v18, 0x0

    .line 169
    array-length v0, v7

    move/from16 v19, v0

    .line 170
    const/16 v20, 0x0

    .line 168
    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v11

    .line 182
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "boasBytes":[B
    .end local v8    # "buffer":[B
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v16    # "size":I
    :cond_6
    :goto_2
    if-eqz v11, :cond_9

    .line 183
    iput-object v11, v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/weirdvoice/utils/ContactsAsyncHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 185
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/weirdvoice/utils/ContactsAsyncHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/weirdvoice/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    monitor-exit v19

    goto/16 :goto_0

    :catchall_2
    move-exception v18

    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v18

    .line 146
    :catchall_3
    move-exception v18

    :try_start_9
    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v18

    .line 162
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "buffer":[B
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v16    # "size":I
    :cond_7
    const/16 v18, 0x0

    :try_start_a
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v6, v8, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_1

    .line 164
    .end local v16    # "size":I
    :catchall_4
    move-exception v18

    .line 165
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 166
    throw v18
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 173
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "buffer":[B
    .end local v12    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    .line 174
    .local v9, "ex":Ljava/lang/Exception;
    const-string v18, "ContactsAsyncHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Cannot load photo "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 177
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 178
    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v18

    iget-object v0, v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto/16 :goto_2

    .line 188
    :cond_9
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/weirdvoice/utils/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_0
.end method
