/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pipex.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lmarquar <leon.marquardt@gmx.de>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/23 10:59:50 by lmarquar          #+#    #+#             */
/*   Updated: 2021/10/23 10:59:51 by lmarquar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PIPEX_H
# define PIPEX_H

# include <fcntl.h>
# include <unistd.h>
# include <sys/wait.h>
# include <stdlib.h>
# include "libft_funcs/libft_funcs.h"

# include <stdio.h>

int		infiletopipe(int fdf[], int fd[], char *arg, int *pid);
int		pipetooutfile(int fdf[], int fd[], char *arg, int *pid);
int		pipetopipe(int fdf[], int fd[], char *arg, int *pid);
int		pipetopipe_rev(int fdf[], int fd[], char *arg, int *pid);
int		createstream(int fdin, int fdout, char *arg);
int		bonus_append(int argc, char *argv[]);

#endif