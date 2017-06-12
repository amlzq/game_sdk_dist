.class Lcom/game/sdk/service/DownGameBoxService$2;
.super Ljava/lang/Object;
.source "DownGameBoxService.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/service/DownGameBoxService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/service/DownGameBoxService;


# direct methods
.method constructor <init>(Lcom/game/sdk/service/DownGameBoxService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/service/DownGameBoxService$2;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1
    .param p1, "arg0"    # Lokhttp3/Call;
    .param p2, "arg1"    # Ljava/io/IOException;

    .prologue
    .line 176
    const-string v0, "down_fail---"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 20
    .param p1, "arg0"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v9, 0x0

    .line 116
    .local v9, "is":Ljava/io/InputStream;
    const/16 v16, 0x2800

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 117
    .local v3, "buf":[B
    const/4 v10, 0x0

    .line 118
    .local v10, "len":I
    const/4 v6, 0x0

    .line 119
    .local v6, "fos":Ljava/io/FileOutputStream;
    const-string v16, "game_box"

    invoke-static/range {v16 .. v16}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "apkPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9

    .line 122
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v14

    .line 123
    .local v14, "total":J
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v5, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    const-wide/16 v12, 0x0

    .line 126
    .local v12, "sum":J
    :goto_0
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_3

    .line 136
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 137
    const-string v16, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u6210\u529f"

    invoke-static/range {v16 .. v16}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 140
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 141
    .local v11, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService$2;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/game/sdk/service/DownGameBoxService;->MSG_STOP_SEVICE:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v11, Landroid/os/Message;->what:I

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService$2;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    move-object/from16 v16, v0

    # getter for: Lcom/game/sdk/service/DownGameBoxService;->handler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/service/DownGameBoxService;->access$3(Lcom/game/sdk/service/DownGameBoxService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 146
    invoke-static {v5}, Lcom/game/sdk/utils/ZipUtil;->isArchiveFile(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 147
    new-instance v8, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    const-string v17, "application/vnd.android.package-archive"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService$2;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/game/sdk/service/DownGameBoxService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    .line 163
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 167
    :cond_1
    :goto_2
    if-eqz v7, :cond_8

    .line 168
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v6, v7

    .line 172
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_3
    return-void

    .line 127
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :cond_3
    const/16 v16, 0x0

    :try_start_4
    move/from16 v0, v16

    invoke-virtual {v7, v3, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 128
    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v12, v12, v16

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService$2;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    move-object/from16 v16, v0

    long-to-float v0, v12

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    long-to-float v0, v14

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/game/sdk/service/DownGameBoxService;->access$2(Lcom/game/sdk/service/DownGameBoxService;I)V

    .line 132
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 133
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v11, Landroid/os/Message;->what:I

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService$2;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    move-object/from16 v16, v0

    # getter for: Lcom/game/sdk/service/DownGameBoxService;->handler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/service/DownGameBoxService;->access$3(Lcom/game/sdk/service/DownGameBoxService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 156
    .end local v11    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v4

    move-object v6, v7

    .line 157
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    .local v4, "e":Ljava/lang/Exception;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_5
    const-string v16, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u5931\u8d25"

    invoke-static/range {v16 .. v16}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService$2;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v16, v0

    const-string v17, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual/range {v16 .. v17}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService$2;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    move-object/from16 v16, v0

    # getter for: Lcom/game/sdk/service/DownGameBoxService;->nm:Landroid/app/NotificationManager;
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/service/DownGameBoxService;->access$4(Lcom/game/sdk/service/DownGameBoxService;)Landroid/app/NotificationManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService$2;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/game/sdk/service/DownGameBoxService;->notifyId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService$2;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 162
    if-eqz v9, :cond_4

    .line 163
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 167
    :cond_4
    :goto_5
    if-eqz v6, :cond_2

    .line 168
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 169
    :catch_1
    move-exception v16

    goto/16 :goto_3

    .line 152
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "msg":Landroid/os/Message;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :cond_5
    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownGameBoxService$2;->this$0:Lcom/game/sdk/service/DownGameBoxService;

    move-object/from16 v16, v0

    const-string v17, "\u76d2\u5b50\u6587\u4ef6\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static/range {v16 .. v17}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 160
    .end local v11    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v16

    move-object v6, v7

    .line 162
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_6
    if-eqz v9, :cond_6

    .line 163
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 167
    :cond_6
    :goto_7
    if-eqz v6, :cond_7

    .line 168
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 171
    :cond_7
    :goto_8
    throw v16

    .line 169
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "msg":Landroid/os/Message;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :catch_2
    move-exception v16

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 164
    .end local v5    # "file":Ljava/io/File;
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v16

    goto :goto_5

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v17

    goto :goto_7

    .line 169
    :catch_5
    move-exception v17

    goto :goto_8

    .line 164
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "msg":Landroid/os/Message;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :catch_6
    move-exception v16

    goto/16 :goto_2

    .line 160
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v16

    goto :goto_6

    .line 156
    :catch_7
    move-exception v4

    goto/16 :goto_4

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "msg":Landroid/os/Message;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :cond_8
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method
