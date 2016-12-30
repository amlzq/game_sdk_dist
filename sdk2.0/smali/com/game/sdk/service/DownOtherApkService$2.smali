.class Lcom/game/sdk/service/DownOtherApkService$2;
.super Ljava/lang/Object;
.source "DownOtherApkService.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/service/DownOtherApkService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/service/DownOtherApkService;


# direct methods
.method constructor <init>(Lcom/game/sdk/service/DownOtherApkService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/service/DownOtherApkService$2;->this$0:Lcom/game/sdk/service/DownOtherApkService;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1
    .param p1, "arg0"    # Lokhttp3/Call;
    .param p2, "arg1"    # Ljava/io/IOException;

    .prologue
    .line 162
    const-string v0, "down_fail---"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 163
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
    .line 113
    const/4 v9, 0x0

    .line 114
    .local v9, "is":Ljava/io/InputStream;
    const/16 v16, 0x2800

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 115
    .local v3, "buf":[B
    const/4 v10, 0x0

    .line 116
    .local v10, "len":I
    const/4 v6, 0x0

    .line 117
    .local v6, "fos":Ljava/io/FileOutputStream;
    const-string v16, "other_game"

    invoke-static/range {v16 .. v16}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "apkPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9

    .line 120
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v14

    .line 121
    .local v14, "total":J
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v5, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    const-wide/16 v12, 0x0

    .line 124
    .local v12, "sum":J
    :goto_0
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_2

    .line 134
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 135
    const-string v16, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u6210\u529f"

    invoke-static/range {v16 .. v16}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 137
    new-instance v8, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    const-string v17, "application/vnd.android.package-archive"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownOtherApkService$2;->this$0:Lcom/game/sdk/service/DownOtherApkService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/game/sdk/service/DownOtherApkService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    if-eqz v9, :cond_0

    .line 149
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 153
    :cond_0
    :goto_1
    if-eqz v7, :cond_6

    .line 154
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v6, v7

    .line 158
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    return-void

    .line 125
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :cond_2
    const/16 v16, 0x0

    :try_start_4
    move/from16 v0, v16

    invoke-virtual {v7, v3, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 126
    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v12, v12, v16

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownOtherApkService$2;->this$0:Lcom/game/sdk/service/DownOtherApkService;

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

    invoke-static/range {v16 .. v17}, Lcom/game/sdk/service/DownOtherApkService;->access$2(Lcom/game/sdk/service/DownOtherApkService;I)V

    .line 130
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 131
    .local v11, "msg":Landroid/os/Message;
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v11, Landroid/os/Message;->what:I

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownOtherApkService$2;->this$0:Lcom/game/sdk/service/DownOtherApkService;

    move-object/from16 v16, v0

    # getter for: Lcom/game/sdk/service/DownOtherApkService;->handler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/service/DownOtherApkService;->access$3(Lcom/game/sdk/service/DownOtherApkService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 142
    .end local v11    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v4

    move-object v6, v7

    .line 143
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    .local v4, "e":Ljava/lang/Exception;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v16, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u5931\u8d25"

    invoke-static/range {v16 .. v16}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownOtherApkService$2;->this$0:Lcom/game/sdk/service/DownOtherApkService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/service/DownOtherApkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v16, v0

    const-string v17, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual/range {v16 .. v17}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownOtherApkService$2;->this$0:Lcom/game/sdk/service/DownOtherApkService;

    move-object/from16 v16, v0

    # getter for: Lcom/game/sdk/service/DownOtherApkService;->nm:Landroid/app/NotificationManager;
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/service/DownOtherApkService;->access$4(Lcom/game/sdk/service/DownOtherApkService;)Landroid/app/NotificationManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownOtherApkService$2;->this$0:Lcom/game/sdk/service/DownOtherApkService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/game/sdk/service/DownOtherApkService;->notifyId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/service/DownOtherApkService$2;->this$0:Lcom/game/sdk/service/DownOtherApkService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/game/sdk/service/DownOtherApkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    if-eqz v9, :cond_3

    .line 149
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 153
    :cond_3
    :goto_4
    if-eqz v6, :cond_1

    .line 154
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 155
    :catch_1
    move-exception v16

    goto/16 :goto_2

    .line 146
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 148
    :goto_5
    if-eqz v9, :cond_4

    .line 149
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 153
    :cond_4
    :goto_6
    if-eqz v6, :cond_5

    .line 154
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 157
    :cond_5
    :goto_7
    throw v16

    .line 155
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :catch_2
    move-exception v16

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 150
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v16

    goto :goto_4

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v17

    goto :goto_6

    .line 155
    :catch_5
    move-exception v17

    goto :goto_7

    .line 150
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :catch_6
    move-exception v16

    goto/16 :goto_1

    .line 146
    .end local v8    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v16

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 142
    .end local v5    # "file":Ljava/io/File;
    .end local v12    # "sum":J
    .end local v14    # "total":J
    :catch_7
    move-exception v4

    goto :goto_3

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v12    # "sum":J
    .restart local v14    # "total":J
    :cond_6
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method
